#include "userdefs.h"

void usermain(void)
{
	const char *msg = ("usermain...\n");
	write(msg, sizeof(msg));
	exit(0);
}
