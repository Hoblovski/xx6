#include "printf.h"
#include "riscv.h"

void main(void)
{
	printf("main\n");

	unsigned long x = r_sstatus();
	x &= ~SSTATUS_SPP_MASK;
	x |= SSTATUS_SPP_S;
	w_sstatus(x);

	// set M Exception Program Counter to main, for mret.
	// requires gcc -mcmodel=medany
	extern void usermain(void);
	w_sepc((uint64_t)usermain);

	asm volatile("sret");

	while (1)
		;
}
