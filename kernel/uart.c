// 从 xv6-riscv 复制的代码。
#include "defs.h"

//
// low-level driver routines for 16550a UART.
//
// (date specific for QEMU)

#define UART0 0x10000000L
#define UART0_IRQ 10

// the UART control registers are memory-mapped
// at address UART0. this macro returns the
// address of one of the registers.
#define Reg(reg) ((volatile unsigned char *)(UART0 + reg))

// the UART control registers.
// some have different meanings for
// read vs write.
// see http://byterunner.com/16550.html
#define RHR 0 // receive holding register (for input bytes)
#define THR 0 // transmit holding register (for output bytes)
#define IER 1 // interrupt enable register
#define IER_RX_ENABLE (1 << 0)
#define IER_TX_ENABLE (1 << 1)
#define FCR 2 // FIFO control register
#define FCR_FIFO_ENABLE (1 << 0)
#define FCR_FIFO_CLEAR (3 << 1) // clear the content of the two FIFOs
#define ISR 2 // interrupt status register
#define LCR 3 // line control register
#define LCR_EIGHT_BITS (3 << 0)
#define LCR_BAUD_LATCH (1 << 7) // special mode to set baud rate
#define LSR 5 // line status register
#define LSR_RX_READY (1 << 0) // input is waiting to be read from RHR
#define LSR_TX_IDLE (1 << 5) // THR can accept another character to send

#define ReadReg(reg) (*(Reg(reg)))
#define WriteReg(reg, v) (*(Reg(reg)) = (v))

void uartinit(void)
{
	// disable interrupts.
	WriteReg(IER, 0x00);

	// special mode to set baud rate.
	WriteReg(LCR, LCR_BAUD_LATCH);

	// LSB for baud rate of 38.4K.
	WriteReg(0, 0x03);

	// MSB for baud rate of 38.4K.
	WriteReg(1, 0x00);

	// leave set-baud mode,
	// and set word length to 8 bits, no parity.
	WriteReg(LCR, LCR_EIGHT_BITS);
}

void uartputc_sync(int c)
{
	// wait for Transmit Holding Empty to be set in LSR.
	while ((ReadReg(LSR) & LSR_TX_IDLE) == 0)
		;
	WriteReg(THR, c);
}
