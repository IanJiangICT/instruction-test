.global _start
.section .text
.balign 4

_start:
1:	auipc ra, %pcrel_hi(hello_msg)
	addi  ra, ra, %pcrel_lo(1b)
	//fmv.d.x ft1, ra
	fmv.w.x ft1, zero
	fmv.w.x ft1, ra
	fmv.d ft2,ft1
	nop
	nop
	nop


.section .rodata
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
