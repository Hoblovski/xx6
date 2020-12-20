#include "defs.h"

void (*userprogs[])(void) = { usermain1, usermain2, useridle };

void sched(void)
{
	static int i = 0;
	w_sepc((uint64_t)userprogs[i]);

	unsigned long x = r_sstatus();
	x &= ~SSTATUS_SPP_MASK;
	x |= SSTATUS_SPP_U;
	x &= ~SSTATUS_SPIE;
	w_sstatus(x);

	i++;
	asm volatile("sret");
}
