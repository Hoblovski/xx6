#include "uart.h"
#include "printf.h"

// m 态初始化

__attribute__((aligned(16))) char stack0[4096];

void start()
{
	extern char end[];
	printf("hello world! start=%p, kernelsize=%d\n", start,
	       (long long)end - 0x80000000);
	printf(0);
	while (1)
		;
}
