#ifdef CONFIG_ALIGNMENT_TRAP/*
 *  linux/arch/arm/kernel/head-nommu.S
 *
 *  Copyright (C) 1994-2002 Russell King
 *  Copyright (C) 2003-2006 Hyok S. Choi
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 *  Common kernel startup code (non-paged MM)
 *
 */
#include <linux/linkage.h>
#include <linux/init.h>

#include <asm/assembler.h>
#include <asm/ptrace.h>
#include <asm/asm-offsets.h>
#include <asm/memory.h>
#include <asm/cp15.h>
#include <asm/thread_info.h>
#include <asm/v7m.h>
#include <asm/mpu.h>

/*
 * Kernel startup entry point.
 * ---------------------------
 *
 * This is normally called from the decompressor code.  The requirements
 * are: MMU = off, D-cache = off, I-cache = dont care, r0 = 0,
 * r1 = machine nr.
 *
 * See linux/arch/arm/tools/mach-types for the complete list of machine
 * numbers for r1.
 *
 */
	.arm

	__HEAD
ENTRY(stext)

 THUMB(	adr	r9, BSYM(1f)	)	@ Kernel is always entered in ARM.
 THUMB(	bx	r9		)	@ If this is a Thumb-2 kernel,
 THUMB(	.thumb			)	@ switch to Thumb now.
 THUMB(1:			)

	setmode	PSR_F_BIT | PSR_I_BIT | SVC_MODE, r9 @ ensure svc mode
						@ and irqs disabled
#if defined(CONFIG_CPU_CP15)
	mrc	p15, 0, r9, c0, c0		@ get processor id
#elif defined(CONFIG_CPU_V7M)
	ldr	r9, =BASEADDR_V7M_SCB
	ldr	r9, [r9, V7M_SCB_CPUID]
#else
	ldr	r9, =CONFIG_PROCESSOR_ID
#endif
	bl	__lookup_processor_type		@ r5=procinfo r9=cpuid
	movs	r10, r5				@ invalid processor (r5=0)?
	beq	__error_p				@ yes, error 'p'

#ifdef CONFIG_ARM_MPU
	/* Calculate the size of a region covering just the kernel */
	ldr	r5, =PHYS_OFFSET		@ Region start: PHYS_OFFSET
	ldr     r6, =(_end)			@ Cover whole kernel
	sub	r6, r6, r5			@ Minimum size of region to map
	clz	r6, r6				@ Region size must be 2^N...
	rsb	r6, r6, #31			@ ...so round up region size
	lsl	r6, r6, #MPU_RSR_SZ		@ Put size in right field
	orr	r6, r6, #(1 << MPU_RSR_EN)	@ Set region enabled bit
	bl	__setup_mpu
#endif
	ldr	r13, =__mmap_switched		@ address to jump to after
						@ initialising sctlr
	adr	lr, BSYM(1f)			@ return (PIC) address
 ARM(	add	pc, r10, #PROCINFO_INITFUNC	)
 THUMB(	add	r12, r10, #PROCINFO_INITFUNC	)
 THUMB(	mov	pc, r12				)
 1:	b	__after_proc_init
ENDPROC(stext)

#ifdef CONFIG_SMP
	__CPUINIT
ENTRY(secondary_startup)
	/*
	 * Common entry point for secondary CPUs.
	 *
	 * Ensure that we're in SVC mode, and IRQs are disabled.  Lookup
	 * the processor type - there is no need to check the machine type
	 * as it has already been validated by the primary processor.
	 */
	setmode	PSR_F_BIT | PSR_I_BIT | SVC_MODE, r9
#ifndef CONFIG_CPU_CP15
	ldr	r9, =CONFIG_PROCESSOR_ID
#else
	mrc	p15, 0, r9, c0, c0		@ get processor id
#endif
	bl	__lookup_processor_type		@ r5=procinfo r9=cpuid
	movs	r10, r5				@ invalid processor (r5=0)?
	beq	__error_p				@ yes, error 'p'

	adr	r4, __secondary_data
	ldmia	r4, {r7, r12}

#ifdef CONFIG_ARM_MPU
	/* Use MPU region info supplied by __cpu_up */
	ldr	r6, [r7]			@ get secondary_data.mpu_szr
	bl      __setup_mpu			@ Initialize the MPU
#endif

	adr	lr, BSYM(__after_proc_init)	@ return address
	mov	r13, r12			@ __secondary_switched address
 ARM(	add	pc, r10, #PROCINFO_INITFUNC	)
 THUMB(	add	r12, r10, #PROCINFO_INITFUNC	)
 THUMB(	mov	pc, r12				)
ENDPROC(stext)

/*
 * Set the Control Register and Read the process ID.
 */
__after_proc_init:
#ifdef CONFIG_CPU_CP15
	/*
	 * CP15 system control register value returned in r0 from
	 * the CPU init function.
	 */
	bic	r0, r0, #CR_A
#ifdef CONFIG_CPU_DCACHE_DISABLE
	bic	r0, r0, #CR_C
#endif
#ifdef CONFIG_CPU_BPREDICT_DISABLE
	bic	r0, r0, #CR_Z
#endif
#ifdef CONFIG_CPU_ICACHE_DISABLE
	bic	r0, r0, #CR_I
#endif
#ifdef CONFIG_CPU_HIGH_VECTOR
	orr	r0, r0, #CR_V
#else
	bic	r0, r0, #CR_V
#endif
	mcr	p15, 0, r0, c1, c0, 0		@ write control reg
#endif /* CONFIG_CPU_CP15 */

	b	__mmap_switched			@ clear the BSS and jump
						@ to start_kernel
ENDPROC(__after_proc_init)
	.ltorg

#ifdef CONFIG_ARM_MPU


/* Set which MPU region should be programmed */
.macro set_region_nr tmp, rgnr
	mov	\tmp, \rgnr			@ Use static region numbers
	mcr	p15, 0, \tmp, c6, c2, 0		@ Write RGNR
.endm

/* Setup a single MPU region, either D or I side (D-side for unified) */
.macro setup_region bar, acr, sr, side = MPU_DATA_SIDE
	mcr	p15, 0, \bar, c6, c1, (0 + \side)	@ I/DRBAR
	mcr	p15, 0, \acr, c6, c1, (4 + \side)	@ I/DRACR
	mcr	p15, 0, \sr, c6, c1, (2 + \side)		@ I/DRSR
.endm

/*
 * Setup the MPU and initial MPU Regions. We create the following regions:
 * Region 0: Use this for probing the MPU details, so leave disabled.
 * Region 1: Background region - covers the whole of RAM as strongly ordered
 * Region 2: Normal, Shared, cacheable for RAM. From PHYS_OFFSET, size from r6
 *
 * r6: Value to be written to DRSR (and IRSR if required) for MPU_RAM_REGION
*/

ENTRY(__setup_mpu)

	/* Probe for v7 PMSA compliance */
	mrc	p15, 0, r0, c0, c1, 4		@ Read ID_MMFR0
	and	r0, r0, #(MMFR0_PMSA)		@ PMSA field
	teq	r0, #(MMFR0_PMSAv7)		@ PMSA v7
	bne	__error_p			@ Fail: ARM_MPU on NOT v7 PMSA

	/* Determine whether the D/I-side memory map is unified. We set the
	 * flags here and continue to use them for the rest of this function */
	mrc	p15, 0, r0, c0, c0, 4		@ MPUIR
	ands	r5, r0, #MPUIR_DREGION_SZMASK	@ 0 size d region => No MPU
	beq	__error_p			@ Fail: ARM_MPU and no MPU
	tst	r0, #MPUIR_nU			@ MPUIR_nU = 0 for unified

	/* Setup second region first to free up r6 */
	set_region_nr r0, #MPU_RAM_REGION
	isb
	/* Full access from PL0, PL1, shared for CONFIG_SMP, cacheable */
	ldr	r0, =PHYS_OFFSET		@ RAM starts at PHYS_OFFSET
	ldr	r5,=(MPU_AP_PL1RW_PL0RW | MPU_RGN_NORMAL)

	setup_region r0, r5, r6, MPU_DATA_SIDE	@ PHYS_OFFSET, shared, enabled
	beq	1f				@ Memory-map not unified
	setup_region r0, r5, r6, MPU_INSTR_SIDE @ PHYS_OFFSET, shared, enabled
1:	isb

	/* First/background region */
	set_region_nr r0, #MPU_BG_REGION
	isb
	/* Execute Never,  strongly ordered, inaccessible to PL0, rw PL1  */
	mov	r0, #0				@ BG region starts at 0x0
	ldr	r5,=(MPU_ACR_XN | MPU_RGN_STRONGLY_ORDERED | MPU_AP_PL1RW_PL0NA)
	mov	r6, #MPU_RSR_ALL_MEM		@ 4GB region, enabled

	setup_region r0, r5, r6, MPU_DATA_SIDE	@ 0x0, BG region, enabled
	beq	2f				@ Memory-map not unified
	setup_region r0, r5, r6, MPU_INSTR_SIDE @ 0x0, BG region, enabled
2:	isb

	/* Enable the MPU */
	mrc	p15, 0, r0, c1, c0, 0		@ Read SCTLR
	bic     r0, r0, #CR_BR			@ Disable the 'default mem-map'
	orr	r0, r0, #CR_M			@ Set SCTRL.M (MPU on)
	mcr	p15, 0, r0, c1, c0, 0		@ Enable MPU
	isb
	mov pc,lr
ENDPROC(__setup_mpu)
#endif
#include "head-common.S"
