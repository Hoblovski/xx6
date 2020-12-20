#include "userdefs.h"

void usermain2(void)
{
	const char *msg = ("usermain1...\n");
	write(msg, sizeof(msg));
	for (volatile int i = 0; i < (int)1e8; i++) {
	}
	exit(0);
}

void usermain1(void)
{
	const char *msg = ("usermain2...\n");
	write(msg, sizeof(msg));

	int a[10] = { 12, 0, 0,  };
	for (int i = 1; i < 4; i++)
		a[i] = (a[i - 1] * 97 + 47) & 127;

	char* c = "o";
    for (int i = 0; i < 10; i++) {
		write(&c[0], 1);
	}

	for (volatile int i = 0; i < (int)1e8; i++) {
	}
	exit(0);
}

void useridle(void)
{
	const char *msg = ("useridle\n");
	write(msg, sizeof(msg));
	while (1)
		;
}
