.global _start
.section .text
.balign 4

_start:
1:	auipc ra, %pcrel_hi(hello_msg)
	addi  ra, ra, %pcrel_lo(1b)
	fmv.d.x ft1, ra
	fmv.w.x ft1, zero
	fmv.w.x ft1, ra
	fmv.d ft2,ft1
	fmadd.s fa0, ft0, ft1, ft2
	fmsub.d fa0, ft0, ft1, ft2
	fnmadd.s fa0, ft0, ft1, ft2
	fnmsub.d fa0, ft0, ft1, ft2
	fmsub.d fa0, ft0, ft1, ft2
	fnmsub.s fa0, ft0, ft1, ft2
	fadd.s fa0, ft0, ft1
	fsub.d fa0, ft0, ft1
	fcvt.d.l fa0, t0
	fcvt.s.l fa0, zero
	nop
	.word 0x02f13423
	nop
	li a0, 0x12345678abcd4321
	nop
	nop


.section .rodata
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
