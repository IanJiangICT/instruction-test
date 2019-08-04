.global main
.section .text
.balign 4

main:
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    mov w0, #8           // MOV (wide immediate)
    mov w0, #0
    movz w0, #8, LSL #0
    movz w0, #8
    movz w0, #8, LSL #16
    movz w0, #0, LSL #0
    movz w0, #0
    movz w0, #0, LSL #16
    mov x0, #8     
    mov x0, #0     
    movz x0, #8, LSL #0
    movz x0, #8
    movz x0, #8, LSL #16
    movz x0, #0, LSL #0
    movz x0, #0
    movz x0, #0, LSL #16
    mov w1, #8           // MOV (inverted wide immediate)
    mov w1, #0
    mov w1, #0xFFFF
    movn w1, #8, LSL #0
    movn w1, #8
    mov w1, #0xfffffff7
    movn w1, #0, LSL #0
    movn w1, #0
    mov w1, #0xffffffff
    movn w1, #0xFFFF, LSL #0
    movn w1, #0xFFFF
    movn w1, #8, LSL #16
    movn w1, #0, LSL #16
    movn w1, #0xFFFF, LSL #16
    mov x1, #8           
    mov x1, #0
    mov x1, #0xFFFF
    movn x1, #8, LSL #0
    movn x1, #0, LSL #0
    movn x1, #0
    mov x1, #0xffffffffffffffff    	// #-1
    movn x1, #0xFFFF, LSL #0
    movn x1, #0xFFFF
    mov x1, #0xffffffffffff0000    	// #-65536
    movn x1, #8, LSL #16
    mov x1, #0xfffffffffff7ffff    	// #-524289
    movn x1, #0, LSL #16
    movn x1, #0xFFFF, LSL #16
    movn x1, #8, LSL #32
    movn x1, #0, LSL #32
    movn x1, #0xFFFF, LSL #32
    mov w2, #8          // MOV (bitmask immediate)
    mov w2, #0
    movk w3, #0, LSL #0
    movk w3, #0
    movk w3, #8, LSL #0
    movk w3, #8
    movk w3, #0, LSL #16
    movk w3, #8, LSL #16
    movk x3, #0, LSL #0
    movk x3, #0
    movk x3, #8, LSL #0
    movk x3, #8
    movk x3, #0, LSL #16
    movk x3, #8, LSL #16
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    orr w2, w3, w4       // ORR (shift register)
    orr w2, wzr, w4
    orr w2, wzr, w4, LSL #16
    orr w2, wzr, w4, LSR #16
    mov w2, w4, LSL #16
    orr w2, w3, w4, LSL #0
    orr w2, w3, w4, LSR #0
    orr x2, x3, x4
    orr x2, xzr, x4
    orr x2, xzr, x4, LSL #0
    orr x2, xzr, x4, LSR #0
    orr x2, xzr, x4, LSL #32
    orr x2, x3, x4, LSL #0
    orr w2, w3, #8      // ORR (shift immediate)
    orr w2, wzr, #8
    orr w2, wzr, #1
    orr w2, wzr, #2
    orr w2, wzr, #3
    orr w2, wzr, #4
    orr w2, wzr, #6
    orr w2, wzr, #7
    orr w2, wzr, #8
    orr w2, wzr, #12
    orr w2, wzr, #14
    orr w2, wzr, #15
    orr w2, wzr, #16
    orr w2, wzr, #24
    orr w2, wzr, #28
    orr w2, wzr, #30
    orr w2, wzr, #31
    orr w2, wzr, #32
    mov x2, #8
    mov x2, #0
    orr x2, x3, #16
    orr x2, x3, #8
    orr x2, x2, #1
    orr x2, xzr, #1
    orr x2, xzr, #2
    orr x2, xzr, #3
    orr x2, xzr, #4
    orr x2, xzr, #6
    orr x2, xzr, #7
    orr x2, xzr, #8
    orr x2, xzr, #12
    orr x2, xzr, #14
    orr x2, xzr, #15
    orr x2, xzr, #16
    orr x2, xzr, #24
    orr x2, xzr, #28
    orr x2, xzr, #30
    orr x2, xzr, #31
    orr x2, xzr, #32
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
