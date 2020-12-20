#include "defs.h"

void trapinit(void)
{
	w_stvec((uint64_t)trapentry);
}

long sys_write(const char *buf, long len) {
    char c = buf[0];
    printf("\nwrite sz=%d, data=%p, data[0]=%x\n", len, buf, c);
    for (int i = 0; i < len; i++)
		uartputc_sync(buf[i]);
    return 0;
}

long syscall(long number, long a0, long a1, long a2, long a3, long a4, long a5,
	     long a6)
{
	switch (number) {
	case SYS_write:
        return sys_write((const char*) a0, a1);

	case SYS_exit:
		printf("exited with %d\n", a0);
		sched();

	default:
		return -1;
	};
	return -1;
}

void do_trap(struct trapframe *tf)
{
	long scause = r_scause();
	long sepc = r_sepc();

	switch (scause) {
	case SCAUSE_ECALL:
		tf->a0 = syscall(tf->a7, tf->a0, tf->a1, tf->a2, tf->a3, tf->a4,
				 tf->a5, tf->a6);
		sepc += 4;
		break;
	default:
		panic_on(true, "bad s_cause: %d; stval=%p\n", scause, r_stval());
	};

	unsigned long x = r_sstatus();
	x &= ~SSTATUS_SPP_MASK;
	x |= SSTATUS_SPP_U;
	x &= ~SSTATUS_SPIE;
	w_sstatus(x);

	// skip the ecall instruction we just exexuted
	w_sepc(sepc);
}
