.global main
.section .text
.balign 4

main:
    subs  x5, x4, #3      // SUBS (immediate)
    cmp   x4, #5          // - alias for SUBS
    subs  w5, w4, #7
    cmp   w4, #9          // - alias for SUBS
    subs  x5, x4, x3, asr #2   // SUBS (shifted register)
    cmp   x4, x3, lsl #4  // - alias for SUBS  
    subs  w5, w4, w3
    negs  x1, x14         // - alias for SUBS
    negs  xzr, x0, lsr #1 // - alias for SUBS
    negs  wzr, w4, asr #4 // - alias for SUBS
    cmp   w4, w3
    // TODO : CMP (extended register)
    sub   x5, x4, x3  // SUB (shifted register)
    neg   x6, x7
    neg   w8, w9
    neg   w10, w11, lsl #4 // - alias for SUB
    ret

.section .rodata
.balign 4
