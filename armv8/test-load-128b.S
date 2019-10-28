.global main
.section .text
.balign 4

main:
    mov w0, #0
    mov w1, #1
    mov w2, #2
    mov w3, #3
    mov w4, #4
    mov w5, #5
    mov w6, #6
    mov w7, #7
    mov w8, #9
    mov w9, #9
    mov w0, #0
    mov x1, #1
    mov x2, #2
    mov x3, #3
    mov x4, #4
    mov x5, #5
    mov x6, #6
    mov x7, #7
    mov x8, #8
    mov x9, #9
    adrp x1, hello_msg
    add x1, x1, :lo12:hello_msg
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    ldr x2, hello_msg
    ldp x2, x3, [x1]
    ldp w2, w3, [x1]
    ldp x2, x3, [x1]
    ldp w2, w3, [x1]
    ldxp w2, w3, [x1]
    stp w2, w3, [x1]
    stxp w2, w3, w4, [x1]
    ret

.section .rodata
.balign 8
before_msg:
	.asciz "Before hello\n\0"
.balign 8
hello_msg:
	.asciz "!!HELLO WORLD!! and this is a long message. and this is a long message.  and this is a long message.  and this is a long message.  and this is a long message.  \n\0"
.balign 8
after_msg:
	.asciz "After hello\n\0"
