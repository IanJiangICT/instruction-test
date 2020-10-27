.global _start
.section .text
.balign 4

_start:
1:	auipc ra, %pcrel_hi(hello_msg)
	addi  ra, ra, %pcrel_lo(1b)
	csrrs s4, frm, zero
	frrm s6
	csrrwi	t5,fcsr,2

	nop
	nop
	nop


.section .rodata
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
