# qemu 开始执行的第一条指令在这里

.section .text.boot

.globl _entry
_entry:
    la sp, stack0
    li a0, 1024*4
    add sp, sp, a0

    call start

spin:
    j spin
