#include "defs.h"

void main(void)
{
	printf("main\n");

	unsigned long x = r_sstatus();
	x &= ~SSTATUS_SPP_MASK;
	x |= SSTATUS_SPP_U;
	x &= ~SSTATUS_SPIE;
	w_sstatus(x);

	// set M Exception Program Counter to main, for mret.
	// requires gcc -mcmodel=medany
	w_sepc((uint64_t)usermain);

	w_stvec((uint64_t)trapentry);

	asm volatile("sret");

	while (1)
		;
}
