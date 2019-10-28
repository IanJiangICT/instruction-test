.global main
.section .text
.balign 4

main:
	slli	s2, s2, 0x10
	srli	s2, s2, 0x10
	srai	s2, s2, 0x10
	slliw	s2, s2, 0x10
	srliw	s2, s2, 0x10
	sraiw	s2, s2, 0x10
	ret

.section .rodata
.balign 4
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
