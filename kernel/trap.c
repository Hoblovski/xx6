#include "defs.h"

void do_trap(struct trapframe *tf)
{
	panic_on(r_scause() != 8, "only syscall traps supported");
	printf("%s\n", tf->a0);

	unsigned long x = r_sstatus();
	x &= ~SSTATUS_SPP_MASK;
	x |= SSTATUS_SPP_U;
	x &= ~SSTATUS_SPIE;
	w_sstatus(x);

	// skip the ecall instruction we just exexuted
	w_sepc(r_sepc() + 4);
}
