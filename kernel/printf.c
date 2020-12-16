#include <stdarg.h>
#include <stdint.h>

#include "defs.h"

static char digits[] = "0123456789abcdef";

static void printstr(const char *s)
{
	for (; *s; s++)
		uartputc_sync(*s);
}

static void printint_dec(int val)
{
	char buf[16];
	int len = 0;

	if (val < 0) {
		uartputc_sync('-');
		val = -val;
	}

	do {
		buf[len++] = digits[val % 10];
		val /= 10;
	} while (val != 0);

	while (--len >= 0)
		uartputc_sync(buf[len]);
}

static void printint_hex(int val)
{
	for (int shift = 8 * sizeof(val) - 4; shift >= 0; shift -= 4)
		uartputc_sync(digits[(val >> shift) & 0xf]);
}

static void printptr(uint64_t val)
{
	uartputc_sync('0');
	uartputc_sync('x');
	for (int shift = 8 * sizeof(val) - 4; shift >= 0; shift -= 4)
		uartputc_sync(digits[(val >> shift) & 0xf]);
}

static void vprintf(const char *fmt, va_list ap)
{
	panic_on(!fmt, "null format string");
	for (const char *p = fmt; *p; p++) {
		char c = *p;
		if (c != '%') {
			uartputc_sync(c);
			continue;
		}
		if ((c = *++p) == 0)
			break;
		switch (c) {
		case 'd':
			printint_dec(va_arg(ap, int));
			break;
		case 'x':
			printint_hex(va_arg(ap, int));
			break;
		case 'p':
			printptr(va_arg(ap, uint64_t));
			break;
		case 's': {
			char *s = va_arg(ap, char *);
			if (!s)
				s = "(null)";
			printstr(s);
			break;
		}
		case '%':
			uartputc_sync('%');
			break;
		default:
			uartputc_sync('%');
			uartputc_sync(c);
			break;
		}
	}
}

void printf(const char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	vprintf(fmt, ap);
	va_end(ap);
}

void panic_on(int cond, const char *fmt, ...)
{
	if (!cond)
		return;
	printf("================ KERNEL PANIC! ================\n");
	va_list ap;
	va_start(ap, fmt);
	vprintf(fmt, ap);
	va_end(ap);
	printf("\n================ SUSPENDED! ================");
	while (1)
		;
}
