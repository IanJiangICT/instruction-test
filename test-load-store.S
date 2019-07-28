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
    negs  w2, w4, asr #4 // (gdb) b NegXSRegCc # to locate here 
    adrp x1, hello_msg
    add x1, x1, :lo12:hello_msg
    ldr w5, [x1, w8, uxtw] // Load register (register offset)
    ldr w5, [x1, x8, sxtx] 
    ldr x5, [x1, w8, sxtw] 
    ldr x5, [x1, x8, lsl #3] 
    ldr x5, [x1, x8] 
    ldr w5, [x1, x8]
    ldrb w5, [x1, x8]
    ldrb w5, [x1, w8, uxtw] 
    ldrb w5, [x1, x8, sxtx] 
    ldrb w5, [x1, x8, lsl #0] 
    ldrsb w5, [x1, w8, uxtw] 
    ldrsb w5, [x1, x8, sxtx] 
    ldrsb w5, [x1, x8, lsl #0] 
    ldrsb x5, [x1, w8, uxtw] 
    ldrsb x5, [x1, x8, sxtx] 
    ldrsb x5, [x1, x8, lsl #0] 
    ldrh w5, [x1, w8, uxtw] 
    ldrh w5, [x1, x8, sxtx] 
    ldrh w5, [x1, x8, lsl #0] 
    ldrsh w5, [x1, w8, uxtw] 
    ldrsh w5, [x1, x8, sxtx] 
    ldrsh w5, [x1, x8, lsl #0] 
    ldrsh x5, [x1, w8, uxtw] 
    ldrsh x5, [x1, x8, sxtx] 
    ldrsh x5, [x1, x8, lsl #0] 
    ldrsw x5, [x1, w8, uxtw] 
    ldrsw x5, [x1, x8, sxtx] 
    ldr w6, [x1], #8        // Load (immediate) Post-index
    ldr x6, [x1], #8
    ldr w6, [x1], #0
    ldr x6, [x1], #0
    ldr w6, [x1, #8]!       // Load (immediate) Pre-index
    ldr x6, [x1, #8]!
    ldr w6, [x1, #0]!
    ldr x6, [x1, #0]!
    ldr w7, [x1, #8]        // Load (immediate) Unsigned offset
    ldr x7, [x1, #8]
    ldr w7, [x1, #0]
    ldr x7, [x1, #0]
    ldr w7, [x1]
    ldr x7, [x1]
    ldur w7, [x1, #8]
    ldur x7, [x1, #8]
    ldurb w7, [x1, #8]
    ldursb w7, [x1, #8]
    ldursb x7, [x1, #8]
    ldurh w7, [x1, #8]
    ldursh w7, [x1, #8]
    ldursh x7, [x1, #8]
    ldursw x7, [x1, #8]
    ldtr w7, [x1, #8]
    ldtr x7, [x1, #8]
    ldtrb w7, [x1, #8]
    ldtrsb w7, [x1, #8]
    ldtrsb x7, [x1, #8]
    ldtrh w7, [x1, #8]
    ldtrsh w7, [x1, #8]
    ldtrsh x7, [x1, #8]
    ldtrsw x7, [x1, #8]
    ldrb w7, [x1, #8]
    ldrsb w7, [x1, #8]
    ldrsb x7, [x1, #8]
    ldrh w7, [x1, #8]
    ldrsh w7, [x1, #8]
    ldrsh x7, [x1, #8]
    ldrsw x7, [x1, #8]
    ldr w7, hello_msg       // Load (literal)
    ldr x7, hello_msg
    ldxr w8, [x1]           // Load Exclusive
    ldxr x8, [x1]
    ldxr w8, [x1, #0]
    ldxr x8, [x1, #0]
    ldxrh w8, [x1]
    ldxrh w8, [x1, #0]
    ldxrb w8, [x1]
    ldxrb w8, [x1, #0]
    ldaxr w8, [x1]           // Load-Acquire Exclusive
    ldaxr x8, [x1]
    ldaxr w8, [x1, #0]
    ldaxr x8, [x1, #0]
    ldaxrh w8, [x1]
    ldaxrh w8, [x1, #0]
    ldaxrb w8, [x1]
    ldaxrb w8, [x1, #0]
    ldxp w9, w8, [x1]      // Load Exclusive Pair
    //ldxp x9, x8, [x1]
    ldxp w9, w8, [x1, #0]
    //ldxp x9, x8, [x1, #0]
    ldaxp w9, w8, [x1]
    //ldaxp x9, x8, [x1]
    ldaxp w9, w8, [x1, #0]
    //ldaxp x9, x8, [x1, #0]
    ldar w10, [x1]           // Load-Acquire
    ldar x10, [x1]
    ldar w10, [x1, #0]
    ldar x10, [x1, #0]
    ldarh w10, [x1]
    ldarh w10, [x1, #0]
    ldarb w10, [x1]
    ldarb w10, [x1, #0]
    //ldapr w10, [x1]           // Load-Acquire RCpc
    //ldapr x10, [x1]
    //ldapr w10, [x1, #0]
    //ldapr x10, [x1, #0]
    //ldaprh w10, [x1]
    //ldaprh w10, [x1, #0]
    //ldaprb w10, [x1]
    //ldaprb w10, [x1, #0]
    stxr w11, w8, [x1]           // Store Exclusive
    stxr w11, x8, [x1]
    stxr w11, w8, [x1, #0]
    stxr w11, x8, [x1, #0]
    stxrh w11, w8, [x1]
    stxrh w11, w8, [x1, #0]
    stxrb w11, w8, [x1]
    stxrb w11, w8, [x1, #0]
    stlr w12, [x1]           // Store-Release 
    stlr x12, [x1]
    stlr w12, [x1, #0]
    stlr x12, [x1, #0]
    stlrh w12, [x1]
    stlrh w12, [x1, #0]
    stlrb w12, [x1]
    stlrb w12, [x1, #0]
    stxp w13, w8, w9, [x1]      // Store Exclusive pair
    stxp w13, w8, w9, [x1, #0]
    //stxp w13, x8, x9, [x1]
    //stxp w13, x8, x9, [x1, #0]
    stlxp w13, w8, w9, [x1]      // Store-Release Exclusive pair
    stlxp w13, w8, w9, [x1, #0]
    //stlxp w13, x8, x9, [x1]
    //stlxp w13, x8, x9, [x1, #0]
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
