#include "syscall.h"

#define SYSCALL(name)	\
.globl name;		\
name:			\
li a7, SYS_ ## name;	\
ecall;			\
ret

SYSCALL(write)
SYSCALL(exit)
