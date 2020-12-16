#pragma once

#include "utils.h"

// printf.c
void printf(const char *fmt, ...);
void panic_on(int cond, const char *fmt, ...);

// uart.c
void uartinit(void);
void uartputc_sync(int c);

// trapasm.S
void trapentry(void);

// trap.c
#include "syscall.h"

// user/init.c
void usermain(void);

// riscv.c
#include "riscv.h"
