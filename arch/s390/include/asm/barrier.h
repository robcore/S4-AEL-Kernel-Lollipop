/*
 * Copyright IBM Corp. 1999, 2009
 *
 * Author(s): Martin Schwidefsky <schwidefsky@de.ibm.com>
 */

#ifndef __ASM_BARRIER_H
#define __ASM_BARRIER_H

/*
 * Force strict CPU ordering.
 * And yes, this is required on UP too when we're talking
 * to devices.
 *
 * This is very similar to the ppc eieio/sync instruction in that is
 * does a checkpoint syncronisation & makes sure that 
 * all memory ops have completed wrt other CPU's ( see 7-15 POP  DJB ).
 */

<<<<<<< HEAD
#define eieio()	asm volatile("bcr 15,0" : : : "memory")
#define SYNC_OTHER_CORES(x)   eieio()
#define mb()    eieio()
#define rmb()   eieio()
#define wmb()   eieio()
#define read_barrier_depends() do { } while(0)
#define smp_mb()       mb()
#define smp_rmb()      rmb()
#define smp_wmb()      wmb()
#define smp_read_barrier_depends()    read_barrier_depends()
#define smp_mb__before_clear_bit()     smp_mb()
#define smp_mb__after_clear_bit()      smp_mb()

#define set_mb(var, value)      do { var = value; mb(); } while (0)
=======
#ifdef CONFIG_HAVE_MARCH_Z196_FEATURES
/* Fast-BCR without checkpoint synchronization */
#define __ASM_BARRIER "bcr 14,0\n"
#else
#define __ASM_BARRIER "bcr 15,0\n"
#endif

#define mb() do {  asm volatile(__ASM_BARRIER : : : "memory"); } while (0)

#define rmb()				mb()
#define wmb()				mb()
#define dma_rmb()			rmb()
#define dma_wmb()			wmb()
#define smp_mb()			mb()
#define smp_rmb()			rmb()
#define smp_wmb()			wmb()

#define read_barrier_depends()		do { } while (0)
#define smp_read_barrier_depends()	do { } while (0)

#define smp_mb__before_atomic()		smp_mb()
#define smp_mb__after_atomic()		smp_mb()

#define set_mb(var, value)		do { var = value; mb(); } while (0)
>>>>>>> 1077fa3... arch: Add lightweight memory barriers dma_rmb() and dma_wmb()

#endif /* __ASM_BARRIER_H */
