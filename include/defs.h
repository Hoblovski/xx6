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
void trapinit(void);

// user/init.c
void usermain1(void);
void usermain2(void);
void useridle(void);

// proc.c
void sched(void);

#include "riscv.h"
