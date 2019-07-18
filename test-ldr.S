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
    adrp x0, main
    add x0, x0, :lo12:main
    adrp x1, hello_msg
    add x1, x1, :lo12:hello_msg
    ldr x9, [x0, #8]
    ldr x9, [x1, #-4]
    ldr w2, [x0, #8]
    ldr w2, [x1, #-4]
    ldrb w2, [x0, #8]
    ldrb w2, [x1, #-4]
    ldrh w2, [x0, #8]
    ldrh w2, [x1, #-4]
    ret

.section .rodata
.balign 4

before_msg:
	.asciz "Before hello\n\0"
hello_msg:
	.asciz "!!HELLO WORLD!!\n\0"
after_msg:
	.asciz "After hello\n\0"
