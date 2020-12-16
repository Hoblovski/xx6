#pragma once

// riscv-specific definitions

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
#define MSTATUS_MIE (1L << 3)
#define MSTATUS_MPP_MASK (3L << 11)
#define MSTATUS_MPP_M (3L << 11)
#define MSTATUS_MPP_S (1L << 11)
#define MSTATUS_MPP_U (0L << 11)

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
#define SSTATUS_SIE (1L << 1)
#define SSTATUS_SPIE (1L << 5)
#define SSTATUS_SPP_MASK (1L << 8)
#define SSTATUS_SPP_S (1L << 8)
#define SSTATUS_SPP_U (0L << 8)

DEFINE_CSR_ACCESSOR(sepc)

DEFINE_CSR_ACCESSOR(sip)
#define SIP_SSIP (1L << 1)

DEFINE_CSR_ACCESSOR(stvec)

DEFINE_CSR_ACCESSOR(scause)

//============================================================================

struct trapframe {
	long ra;
	long sp;
	long gp;
	long tp;
	long t0;
	long t1;
	long t2;
	long s0;
	long s1;
	long a0;
	long a1;
	long a2;
	long a3;
	long a4;
	long a5;
	long a6;
	long a7;
	long s2;
	long s3;
	long s4;
	long s5;
	long s6;
	long s7;
	long s8;
	long s9;
	long s10;
	long s11;
	long t3;
	long t4;
	long t5;
	long t6;
};
