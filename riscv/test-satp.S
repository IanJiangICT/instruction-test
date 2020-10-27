.global _start
.section .text
.balign 4

_start:
	li t0, 0x8123456789ABCDEF
	li t1, 0xF112233449ABCDEF
	li t2, 0x0112233449ABCDEF
	csrw satp, t0
	csrr t0, satp
	csrw satp, t1
	csrr t1, satp
	csrw satp, t2
	csrr t2, satp

	nop
	nop
	nop


.section .rodata
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
