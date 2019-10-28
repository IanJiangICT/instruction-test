.global main
.section .text
.balign 4

main:
    mov x0, #0
    mov x1, #1
    mov x2, #2
    mov x3, #3
    mov x4, #4
    mov x5, #5
    //mov x6, #6
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    mrs x0, nzcv
    msr nzcv, x0
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
