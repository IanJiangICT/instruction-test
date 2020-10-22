.global _start
.section .text
.balign 4

_start:
	lui x5, 6
	csrs mstatus, x5
	li x5, 8
	csrs misa, x5
	csrr x10, misa
	li x5, 32
	csrc misa, x5
	csrr x10, misa
	frflags x6

	nop
	nop
	nop


.section .rodata
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
