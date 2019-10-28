.global main
.section .text
.balign 4

main:
    mov x1, x2
    mov x2, x3
    mov x3, x4
    mov x4, x5
    mov x5, x6
    mov x6, x7
    mov x7, x8
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    adrp x1, hello_msg
    adrp x1, main
    ret

.section .rodata
.balign 4

before_msg:
	.asciz "Before hello\n\0"
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
after_msg:
	.asciz "After hello\n\0"
