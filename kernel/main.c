#include "defs.h"

void main(void)
{
	printf("main\n");

	trapinit();

	sched();

	panic_on(true, "unreachable in main");
}
