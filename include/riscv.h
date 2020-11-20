#pragma once

#include <stdint.h>

#define DEFINE_CSR_ACCESSOR(name)                                              \
	static inline uint64_t r_##name(void)                                  \
	{                                                                      \
		uint64_t x;                                                    \
		asm volatile("csrr %0, " #name : "=r"(x));                     \
		return x;                                                      \
	}                                                                      \
	static inline void w_##name(uint64_t x)                                \
	{                                                                      \
		asm volatile("csrw " #name ", %0" : : "r"(x));                 \
	}

//============================================================================

DEFINE_CSR_ACCESSOR(mstatus)
#define MSTATUS_MPP_MASK (3L << 11)
#define MSTATUS_MPP_M (3L << 11)
#define MSTATUS_MPP_S (1L << 11)
#define MSTATUS_MPP_U (0L << 11)
#define MSTATUS_MIE (1L << 3)

DEFINE_CSR_ACCESSOR(mepc)

DEFINE_CSR_ACCESSOR(mcause)

DEFINE_CSR_ACCESSOR(satp)

DEFINE_CSR_ACCESSOR(medeleg)

DEFINE_CSR_ACCESSOR(mideleg)

DEFINE_CSR_ACCESSOR(mtvec)

DEFINE_CSR_ACCESSOR(mie)
#define MIE_MEIE (1L << 11) // external
#define MIE_MTIE (1L << 7) // timer
#define MIE_MSIE (1L << 3) // software

DEFINE_CSR_ACCESSOR(sstatus)
#define SSTATUS_SPP_MASK (1L << 8)
#define SSTATUS_SPP_S (1L << 8)
#define SSTATUS_SPP_U (0L << 8)
#define SSTATUS_SIE (1L << 1)

DEFINE_CSR_ACCESSOR(sepc)

DEFINE_CSR_ACCESSOR(sip)
#define SIP_SSIP (1L << 1)

//============================================================================
