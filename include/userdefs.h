#pragma once

#include "utils.h"

// syscall.S
#include "syscall.h"
long write(const void *base, long len);
void exit(long retcode);

// libs.c
void uputchar(char ch);
void uprintint_dec(int val);
