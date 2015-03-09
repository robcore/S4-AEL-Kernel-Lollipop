/* alps_io.h
 *
 * Input device driver for alps sensor
 *
 * Copyright (C) 2011-2012 ALPS ELECTRIC CO., LTD. All Rights Reserved.
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

<<<<<<< HEAD:drivers/sensors/alps_io.h
#ifndef ___ALPS_IO_H_INCLUDED
#define ___ALPS_IO_H_INCLUDED

#include <linux/ioctl.h>

#define ALPSIO   0xAF

#define ALPSIO_SET_MAGACTIVATE   _IOW(ALPSIO, 0, int)
#define ALPSIO_SET_ACCACTIVATE   _IOW(ALPSIO, 1, int)
#define ALPSIO_SET_DELAY         _IOW(ALPSIO, 2, int)

=======
#ifdef CONFIG_LOW_CPUCLOCKS
#define FREQ_TABLE_SIZE (39 + OVERCLOCK_EXTRA_FREQS)
#else
#define FREQ_TABLE_SIZE (35 + OVERCLOCK_EXTRA_FREQS)
>>>>>>> 18cfd01... 3rd time is a charm!! FINALLY CPU OC an UC!!:arch/arm/mach-msm/krait-defines.h
#endif

