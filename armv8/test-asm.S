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
    mov x7, #7
    .word 0xABCDAABB
    .inst 0xABCDAABB
    mov x9, #9
    .inst 0x00000000 // main + 40(0x28)
    .inst 0xFFFFFFFF // main + 44(0x2C)
    .word 0x00000000 // main + 44(0x30)
    .inst 0x1234abcd // main + 44(0x34)
    .word 0x1234abcd // main + 44(0x38)
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    adrp x1, hello_msg
    add x1, x1, :lo12:hello_msg
    ldr x2, main
    ldr x3, (main+0x10)
    ldr x4, (main+0x28)
    ldr x5, hello_msg
    ldr x6, (hello_msg+0x10)
    ldr x7, =0x12345678
    ldr x8, =0x5678abcd
    ldr x9, =0xaabb1234
    ldr x10, #0x8
    ldr x11, =(before_msg+010)
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

.section MEM_PAGE_0x01234000 
.balign 0x1000
simpoint_mem_0x01234000:
    .word 0x00000000
.rept 2
    .word 0xABCDAA01
    .word 0xABCDAA02
    .word 0xABCDAA03
    .word 0xABCDAA04
    .word 0xABCDAA05
.endr
    .word 0xFFFFFFFF

.section MEM_PAGE_0x01235000, "a"
.balign 0x1000
simpoint_mem_0x01235000:
    .word 0x00000000
.rept 16
    .word 0x00000000
.endr
    .word 0xFFFFFFFF

.section MEM_PAGE_0x01236000, "w"
.balign 0x1000
simpoint_mem_0x01236000:
    .word 0x00000000
.rept 8
    .word 0x12344321
.endr
    .word 0xFFFFFFFF

.section .rodata
.balign 8
another_msg:
	.asciz "another hello\n\0"
