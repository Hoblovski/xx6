#include "defs.h"

void usermain(void)
{
	const char *msg = ("usermain...\n");
	printf("[U] preparing to ecall:\n");
	printf("[U] msg = %p:\n", msg);

	asm("\n\tmv a0, %0"
	    "\n\tecall" ::"r"(msg)
	    : "a0");

	printf("[U] done with ecall:\n");

	while (1)
		;
}
