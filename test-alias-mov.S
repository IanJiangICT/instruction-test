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
    orr w2, w3, #4      // ORR (immediate)
    orr w2, wzr, #0x00000100
    orr w2, wzr, #0x00001000
    orr w2, wzr, #0x00002000
    orr w2, wzr, #0x00004000
    orr w2, wzr, #0x00008000
    orr w2, wzr, #0x0000c000
    orr w2, wzr, #0x0000f000
    orr w2, wzr, #0x0001f000
    orr w2, wzr, #0x0003f000
    orr w2, wzr, #0x0007f000
    orr w2, wzr, #0x001ff000
    orr w2, wzr, #0x003ff000
    orr w2, wzr, #0x007ff000
    orr w2, wzr, #0x00fff000
    orr w2, wzr, #0x0000ffff
    orr w2, wzr, #0x0001fffe
    orr w2, wzr, #0x0003fffc
    orr w2, wzr, #0x0007fff8
    orr w2, wzr, #0x000ffff0
    orr w2, wzr, #0x0ffff000
    orr w2, wzr, #0x0ffff800
    orr w2, wzr, #0x0ffffc00
    orr w2, wzr, #0x0ffffe00
    orr w2, wzr, #0x0fffff00
    orr w2, wzr, #0x0fffff80
    orr w2, wzr, #0x0fffffc0
    orr w2, wzr, #0x0fffffe0
    orr w2, wzr, #0x0ffffff0
    orr w2, wzr, #0x0ffffff8
    orr w2, wzr, #0x0ffffffc
    orr w2, wzr, #0x0ffffffe
    orr w2, wzr, #0x0fffffff
    orr w2, wzr, #0x1ffffffe
    orr w2, wzr, #0xffff0000
    orr w2, wzr, #0x1ffffff0
    orr w2, wzr, #0x1ffffff8
    orr w2, wzr, #0x1ffffffc
    orr w2, wzr, #0x1fffffff
    orr w2, wzr, #0x3fffffff
    orr w2, wzr, #0x7fffffff
    orr w2, wzr, #0xfffffff0
    orr w2, wzr, #0xfffffff0
    orr w2, wzr, #0xfffffff8
    orr w2, wzr, #0xfffffffc
    orr w2, wzr, #0xfffffffe
    mov x2, #8
    mov x2, #0
    orr x2, x3, #16
    orr x2, xzr, #0x0000f000
    orr x2, xzr, #0x0001f000
    orr x2, xzr, #0xfffffff8
    orr x2, xzr, #0xfffffffc
    orr x2, xzr, #0xfffffffe
    orr x2, xzr, #0x000fffffffe00000
    orr x2, xzr, #0x00ffffffffe00000
    orr x2, xzr, #0x00ffffffffe00000
    orr x2, xzr, #0x00ffffffffe00000
    orr x2, xzr, #0x00fffffffffe0000
    orr x2, xzr, #0x00ffffffffffe000
    orr x2, xzr, #0x00fffffffffffe00
    orr x2, xzr, #0x0ffffffffffffe00
    orr x2, xzr, #0x0fffffffffffffe0
    orr x2, xzr, #0x1fffffffffffffe0
    orr x2, xzr, #0x3fffffffffffffe0
    orr x2, xzr, #0x7fffffffffffffe0
    orr x2, xzr, #0x7ffffffffffffff0
    orr x2, xzr, #0x7ffffffffffffff8
    orr x2, xzr, #0x7ffffffffffffffc
    orr x2, xzr, #0x7ffffffffffffffe
    orr x2, xzr, #0x7fffffffffffffff
    orr x2, xzr, #0xffffffffffffff80
    orr x2, xzr, #0xffffffffffffffc0
    orr x2, xzr, #0xffffffffffffffe0
    orr x2, xzr, #0xfffffffffffffff0
    orr x2, xzr, #0xfffffffffffffffc
    orr x2, xzr, #0xfffffffffffffffe
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
