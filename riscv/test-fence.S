.global main
.section .text
.balign 4

main:
	fence iorw, iorw
	fence
	fence iorw, io
	fence rw, io
	fence.i
	ret

.section .rodata
.balign 4
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
