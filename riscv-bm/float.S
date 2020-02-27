.align 2
.equ MSTATUS_FS, 0x00006000

.section .text
.globl _start

_start:

	# Enable floating-point
	li a0, MSTATUS_FS & (MSTATUS_FS >> 1);
	csrs mstatus, a0
	csrwi fcsr, 0

1:  auipc a0, %pcrel_hi(msg)
    addi  a0, a0, %pcrel_lo(1b)
	add   a1, a0, a0
	add   a2, a0, a1
	add   a3, a1, a2
	add   a4, a2, a3
	add   a5, a3, a4
	add   a6, a4, a5
	jal float
	nop
	jal exit
	ret

float:
	#fcvt.s.w fa0, a0
	#fcvt.s.w fa1, a1
	fadd.d  fa1, fa0, fa0
	fadd.d  fa2, fa0, fa0
	fadd.d  fa3, fa1, fa2
	fadd.d  fa1, fa0, fa0
	fadd.d  fa2, fa0, fa0
	fadd.d  fa3, fa1, fa2

exit:
    nop
    ret

.section .rodata
.align 8
msg:
    .string "Hello.\n"
    .string "Wrold.\n"
