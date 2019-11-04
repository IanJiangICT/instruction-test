.global main
.section .text
.balign 4

main:
	addi gp, gp, 16
	addi gp, gp, -16
	addi gp, gp, 0x7FF
	addi gp, gp, 2047
	addi gp, gp, -2047
	addi gp, gp, -2048
	addi gp, gp, 0x000

	ret

.section .rodata
.balign 4
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
