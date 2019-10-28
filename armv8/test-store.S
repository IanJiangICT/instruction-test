.global main
.section .text
.balign 4

main:
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    adrp x1, test_stack_begin
    mov x2, x1
    mov x3, x1
    add x2, x2, :lo12:test_stack_begin
    add x3, x3, :lo12:test_stack_end
    add x2, x2, #128
    mov sp, x2

new_exit:
    nop
    b new_exit

    stp x1, x2, [sp], #-16
    stp x3, x4, [sp], #-8
    stp x5, x6, [sp], #-16

    mov sp, x2
    stp w1, w2, [sp], #-16
    stp w3, w4, [sp], #-16
    stp w5, w6, [sp], #-16

    mov x8, x2
    add x8, x8, #8
    stp x5, x6, [x8], #-16

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

.section .data
.balign 8
test_stack_begin:
    .word 0x00000000
    .word 0x00000001
    .word 0x00000002
    .word 0x00000003
    .word 0x00000004
    .word 0x00000005
    .word 0x00000006
    .word 0x00000007
    .word 0x00000008
    .word 0x00000009
    .word 0x0000000A
    .word 0x0000000B
    .word 0x0000000C
    .word 0x0000000D
    .word 0x0000000E
    .word 0x0000000F
    .word 0x00000010
    .word 0x00000011
    .word 0x00000012
    .word 0x00000013
    .word 0x00000014
    .word 0x00000015
    .word 0x00000016
    .word 0x00000017
    .word 0x00000018
    .word 0x00000019
    .word 0x0000001A
    .word 0x0000001B
    .word 0x0000001C
    .word 0x0000001D
    .word 0x0000001E
    .word 0x0000001F
    .word 0x00000020
    .word 0x00000021
    .word 0x00000022
    .word 0x00000023
    .word 0x00000024
    .word 0x00000025
    .word 0x00000026
    .word 0x00000027
    .word 0x00000028
    .word 0x00000029
    .word 0x0000002A
    .word 0x0000002B
    .word 0x0000002C
    .word 0x0000002D
    .word 0x0000002E
    .word 0x0000002F
test_stack_end:
    .word 0xFFFFFFFF
