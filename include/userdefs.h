#pragma once

#include "utils.h"

// libs.c
#include "syscall.h"
long write(const void *base, long len);
void exit(long retcode);
