.global main
.section .text
.balign 4

main:
	lui a7, 0x1
	lui a7, 0x123
	lui a7, 0xfffff
	lui a7, 0x7fff8
	c.lui a7, 0x1
	//c.lui a7, 0
	//c.lui a7, -1
	c.lui a7, 0x0000f
	c.lui a7, 0x00010
	c.lui a7, 0x0001f
	//c.lui a7, 0x00030
	//c.lui a7, 0x0003f
	//c.lui a7, 0x000ff
	//c.lui a7, 0x00fff
	//c.lui a7, 0x0ffff
	c.lui a7, 0xfffff
	//c.lui a7, 0x000f8
	//c.lui a7, 0x7fff8
	//c.lui a7, -2
	c.addi4spn a2, sp, 8
	//c.addi4spn a2, 8
	//c.addi16sp x0, 0x10
	c.addi16sp sp, 0x10
	//c.addi16sp 0x10
	c.addi16sp sp, 0x1f0
	c.addi16sp sp, -256
	ret

.section .rodata
.balign 4
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
