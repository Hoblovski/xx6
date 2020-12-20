#include "defs.h"

// m 态初始化

__attribute__((aligned(16))) char stack0[4096];

void start()
{
	uartinit();
	printf("starting...\n");

	// set M Previous Privilege mode to Supervisor, for mret.
	unsigned long x = r_mstatus();
	x &= ~MSTATUS_MPP_MASK;
	x |= MSTATUS_MPP_S;
	w_mstatus(x);

	// set M Exception Program Counter to main, for mret.
	// requires gcc -mcmodel=medany
	extern void main(void);
	w_mepc((uint64_t)main);

	// disable paging for now.
	w_satp(0);

	// delegate all interrupts and exceptions to supervisor mode.
	w_medeleg(0xffff);
	w_mideleg(0xffff);

	asm volatile("mret");

	panic_on(true, "unreachable in start");
}
