simpoint_entry:
  mov   x0, #0xc
  mov   x1, #0x45fa48
  mov   x2, #0xc
  mov   x3, #0x40a528
  mov   x4, #0x45fa54
  mov   x5, #0x4940ea
  mov   x6, #0x6f77206f6c6c6548
  mov   x7, #0x21646c726f77206f
  mov   x8, #0x101010101010101
  mov   x9, #0x3fffff
  mov   x10, #0x200000
  mov   x11, #0x100
  mov   x12, #0x490870
  mov   x13, #0x490858
  mov   x14, #0x1
  mov   x15, #0x0
  mov   x16, #0x1030
  mov   x17, #0x1000
  mov   x18, #0x1
  mov   x19, #0xc
  mov   x20, #0x48f250
  mov   x21, #0x48f000
  mov   x22, #0x479870
  mov   x23, #0x45fa48
  mov   x24, #0x0
  mov   x25, #0x0
  mov   x26, #0x0
  mov   x27, #0x0
  mov   x28, #0x0
  mov   x29, #0x0
  msr   cpsr, x29
  adr   x29, _start_40
  str   x29, [sp, #8]
  add   x29, sp, #66320
  str   x29, [sp, #8]
  mov   x29, #0x600000000
  str   x29, [sp, #8]
  mov   x29, #0x4001d8
  str   x29, [sp, #8]
  mov   x29, #0x10040074c
  str   x29, [sp, #8]
  mov   x29, #0x7ffffefe48
  str   x29, [sp, #8]
  adr   x29, __libc_start_main_516
  str   x29, [sp, #8]
  add   x29, sp, #48
  str   x29, [sp, #8]
  mov   x29, #0x400738
  str   x29, [sp, #8]
  mov   x29, #0x0
  str   x29, [sp, #8]
  mov   x29, #0x0
  str   x29, [sp, #8]
  mov   x29, #0x400c60
  str   x29, [sp, #8]
  mov   x29, #0x400ba0
  str   x29, [sp, #8]
  mov   x29, #0x4001d8
  str   x29, [sp, #8]
  adr   x29, main_36
  str   x29, [sp, #8]
  add   x29, sp, #64
  str   x29, [sp, #8]
  mov   x29, #0x0
  str   x29, [sp, #8]
  mov   x29, #0x45fa48
  str   x29, [sp, #8]
  mov   x29, #0x479870
  str   x29, [sp, #8]
  mov   x29, #0x48f000
  str   x29, [sp, #8]
  mov   x29, #0x48f250
  str   x29, [sp, #8]
  mov   x29, #0xc
  str   x29, [sp, #8]
  adr   x29, puts_220
  str   x29, [sp, #8]
  add   x29, sp, #64
  str   x29, [sp, #8]
  mov   x29, #0x21646c72
  mov   x30, #0x45fa48
  str   x29, [x30]
  mov   x29, #0x21646c72
  mov   x30, #0x45fa50
  str   w29, [x30]
  mov   x29, #0x479678
  mov   x30, #0x460108
  str   x29, [x30]
  mov   x29, #0x479c60
  mov   x30, #0x460110
  str   x29, [x30]
  mov   x29, #0x40a528
  mov   x30, #0x4798a8
  str   x29, [x30]
  mov   x29, #0x496090
  mov   x30, #0x48f278
  str   x29, [x30]
  mov   x29, #0x496090
  mov   x30, #0x48f280
  str   x29, [x30]
  mov   x29, #0x4913d8
  mov   x30, #0x48f2d8
  str   x29, [x30]
  mov   x29, #0xffffffff
  mov   x30, #0x48f310
  str   w29, [x30]
  mov   x29, #0x479870
  mov   x30, #0x48f328
  str   x29, [x30]
  mov   x29, #0x1
  mov   x30, #0x4913dc
  str   w29, [x30]
  mov   x29, #0x406e6c
  mov   x30, #0x7ffffefc40
  str   x29, [x30]
  mov   x29, #0x400558
  mov   x30, #0x7ffffefc80
  str   x29, [x30]
  mov   x29, #0x400ba0
  mov   x30, #0x7ffffefc90
  str   x29, [x30]
  mov   x29, #0x0
  mov   x30, #0x7ffffefca0
  str   x29, [x30]
  mov   x29, #0x0
  mov   x30, #0x7ffffefcb0
  str   x29, [x30]
  mov   x29, #0x6
  mov   x30, #0x7ffffefcec
  str   w29, [x30]
  add   x29, sp, #8
  adr   x30, _IO_file_xsputn_332
  b     simpoint_start

abort:
  movz   x29, #0, LSL #0
  movz   x30, #0, LSL #0
  orr   x5, xzr, x0
  ldr   x1, [sp]
  add   x2, sp, #8
  add   x6, sp, #0
  ldr   w0, #4195360
  ldr   w3, #4195368
  ldr   w4, #4195376
  bl   __libc_start_main	// <__libc_start_main>
_start_40:
  bl   abort	// <abort>
unknown    (inst 0x000000)
unknown    (inst 0x400534)
unknown    (inst 0x000000)
unknown    (inst 0x400ba0)
unknown    (inst 0x000000)
unknown    (inst 0x400c60)
unknown    (inst 0x000000)

main:
  stp   x29, x30, [sp, #-48]!
  add   x29, sp, #0
  str   x0, [x29, #28]
  str   x1, [x29, #16]
  str   xzr, [x29, #44]
  b   main_48	// <main+48>
main_24:
  adrp   x0, #389120
  add   x0, x0, #2632
  bl   puts	// <puts>
main_36:
  ldr   x0, [x29, #44]
  add   w0, w0, #1
  str   x0, [x29, #44]
main_48:
  ldr   x0, [x29, #44]
  cmp   w0, #199
  b.le   main_24	// <main+24>
  movz   w0, #0, LSL #0
  ldp   x29, x30, [sp], #48
  ret   
unknown    (inst 0x000000)

__libc_fatal:
  stp   x29, x30, [sp, #-336]!
  adrp   x7, #389120
  add   x29, sp, #0
  stp   x19, x20, [sp, #16]
  orr   x20, xzr, x3
  stp   x21, x22, [sp, #32]
  orr   x21, xzr, x4
  stp   x0, x2, [x29, #88]
  orr   x22, xzr, x5
  ldr   x0, [x7, #2656]
  str   x1, [x29, #108]
  movz   w1, #0, LSL #0
  stp   x23, x24, [sp, #48]
  str   x25, [sp, #64]
  cbz   x0, __libc_start_main_72	// <__libc_start_main+72>
  ldr   x0, [x0]
  cmp   w0, #0
  csinc   w1, wzr, wzr, ne
__libc_start_main_72:
  ldr   x0, [x29, #108]
  adrp   x4, #589824
  ldr   x5, [x29, #96]
  adrp   x3, #593920
  adrp   x2, #581632
  str   x1, [x4, #1448]
  add   x0, x5, x0, LSL #3
  str   x6, [x2, #3832]
  add   x0, x0, #8
  str   x0, [x3, #1104]
__libc_start_main_112:
  ldr   x1, [x0], #8]
  cbnz   x1, __libc_start_main_112	// <__libc_start_main+112>
  bl   _dl_aux_init	// <_dl_aux_init>
  adrp   x1, #593920
  adrp   x0, #389120
  ldr   x2, [x1, #4000]
  ldr   x0, [x0, #2664]
  cmp   x2, #0
  ccmp   x0, #0, #4, eq
  b.ne   __libc_start_main_520	// <__libc_start_main+520>
__libc_start_main_152:
  bl   __libc_init_secure	// <__libc_init_secure>
  adrp   x1, #389120
  adrp   x0, #389120
  ldr   x19, [x1, #2648]
  ldr   x1, [x0, #2672]
  cmp   x19, x1
  b.cs   __libc_start_main_264	// <__libc_start_main+264>
  ldr   x1, [x19, #8]
  ldr   x24, [x19]
  cmp   x1, #1032
  b.ne   __libc_start_main_252	// <__libc_start_main+252>
  orr   x23, xzr, x0
  adrp   x25, #593920
__libc_start_main_204:
  ldr   x1, [x19, #16]
  add   x19, x19, #24
  ldr   x0, [x25, #1136]
  blr   x1
  str   x0, [x24]
  ldr   x1, [x23, #2672]
  cmp   x19, x1
  b.cs   __libc_start_main_264	// <__libc_start_main+264>
  ldr   x0, [x19, #8]
  ldr   x24, [x19]
  cmp   x0, #1032
  b.eq   __libc_start_main_204	// <__libc_start_main+204>
__libc_start_main_252:
  adrp   x0, #389120
  add   x0, x0, #2760
  bl   __libc_fatal	// <__libc_fatal>
__libc_start_main_264:
  bl   __libc_setup_tls	// <__libc_setup_tls>
  adrp   x0, #581632
  adrp   x1, #589824
  adrp   x2, #581632
  ldr   x0, [x0, #3696]
  ldr   x1, [x1, #1448]
  ldr   x0, [x0]
  and   x0, x0, #18446744073709551360
  str   x0, [x2, #3680]
  cbz   w1, __libc_start_main_648	// <__libc_start_main+648>
__libc_start_main_304:
  adrp   x0, #389120
  ldr   x0, [x0, #2680]
  cbz   x0, __libc_start_main_320	// <__libc_start_main+320>
  nop   
__libc_start_main_320:
  adrp   x1, #581632
  adrp   x0, #581632
  ldr   x1, [x1, #3696]
  ldr   x1, [x1, #8]
  str   x1, [x0, #3688]
  cbz   x22, __libc_start_main_360	// <__libc_start_main+360>
  movz   x2, #0, LSL #0
  movz   x1, #0, LSL #0
  orr   x0, xzr, x22
  bl   __cxa_atexit	// <__cxa_atexit>
__libc_start_main_360:
  adrp   x2, #593920
  ldr   x0, [x29, #108]
  ldr   x1, [x29, #96]
  ldr   x2, [x2, #1104]
  bl   __libc_init_first	// <__libc_init_first>
  cbz   x21, __libc_start_main_400	// <__libc_start_main+400>
  movz   x2, #0, LSL #0
  movz   x1, #0, LSL #0
  orr   x0, xzr, x21
  bl   __cxa_atexit	// <__cxa_atexit>
__libc_start_main_400:
  adrp   x0, #581632
  ldr   x0, [x0, #3840]
  cbz   w0, __libc_start_main_416	// <__libc_start_main+416>
  bl   __libc_check_standard_fds	// <__libc_check_standard_fds>
__libc_start_main_416:
  cbz   x20, __libc_start_main_440	// <__libc_start_main+440>
  adrp   x2, #593920
  ldr   x0, [x29, #108]
  ldr   x1, [x29, #96]
  ldr   x2, [x2, #1104]
  blr   x20
__libc_start_main_440:
  movz   x1, #0, LSL #0
  movz   x0, #0, LSL #0
  bl   _dl_debug_initialize	// <_dl_debug_initialize>
  add   x0, x29, #120
  bl   _setjmp	// <_setjmp>
  cbnz   w0, __libc_start_main_592	// <__libc_start_main+592>
  mrs   x3, tpidr_el0
  adrp   x0, #593920
  sub   x3, x3, #1776
  add   x5, x29, #120
  ldr   x2, [x0, #1104]
  ldr   x1, [x29, #96]
  ldr   x4, [x3, #256]
  str   x5, [x3, #256]
  ldr   x3, [x3, #248]
  stp   x4, x3, [x29, #304]
  ldr   x0, [x29, #108]
  ldr   x3, [x29, #88]
  blr   x3
__libc_start_main_516:
  bl   exit	// <exit>
__libc_start_main_520:
  ldrh   w2, [w0, #54]
  cmp   w2, #56
  b.eq   __libc_start_main_564	// <__libc_start_main+564>
  adrp   x3, #389120
  adrp   x1, #389120
  adrp   x0, #389120
  add   x3, x3, #2864
  movz   w2, #174, LSL #0
  add   x1, x1, #2696
  add   x0, x0, #2712
  bl   __assert_fail	// <__assert_fail>
__libc_start_main_564:
  adrp   x3, #593920
  ldr   x2, [x0, #32]
  ldrh   w4, [w0, #56]
  str   x4, [x3, #4056]
  add   x0, x2, x0
  str   x0, [x1, #4000]
  b   __libc_start_main_152	// <__libc_start_main+152>
__libc_start_main_592:
  nop   
  adrp   x0, #389120
  ldr   x0, [x0, #2688]
__libc_start_main_604:
  ldaxr   x1, xzr, [x0]
  sub   w2, w1, #1
  stxr   x2, x3, [x0]
  cbnz   w3, __libc_start_main_604	// <__libc_start_main+604>
  cmp   w1, #1
  b.eq   __libc_start_main_704	// <__libc_start_main+704>
  movz   x1, #93, LSL #0
__libc_start_main_632:
  movz   x0, #0, LSL #0
  orr   x8, xzr, x1
  svc   #0x0
  b   __libc_start_main_632	// <__libc_start_main+632>
__libc_start_main_648:
  bl   _dl_discover_osversion	// <_dl_discover_osversion>
  tbnz   w0, #0x80000000, __libc_start_main_724	// <__libc_start_main+724>
  adrp   x1, #593920
  ldr   x1, [x1, #4088]
  cbnz   w1, __libc_start_main_712	// <__libc_start_main+712>
__libc_start_main_668:
  adrp   x1, #593920
  str   x0, [x1, #4088]
__libc_start_main_676:
  movz   w1, #1791, LSL #0
  movk   w1, #3, LSL #16
  cmp   w0, w1
  b.gt   __libc_start_main_304	// <__libc_start_main+304>
  adrp   x0, #389120
  add   x0, x0, #2800
  bl   __libc_fatal	// <__libc_fatal>
__libc_start_main_704:
  movz   w0, #0, LSL #0
  bl   exit	// <exit>
__libc_start_main_712:
  cmp   w0, w1
  b.cs   __libc_start_main_676	// <__libc_start_main+676>
  b   __libc_start_main_668	// <__libc_start_main+668>
__libc_start_main_724:
  adrp   x0, #389120
  add   x0, x0, #2824
  bl   __libc_fatal	// <__libc_fatal>

puts:
  stp   x29, x30, [sp, #-64]!
  add   x29, sp, #0
  stp   x21, x22, [sp, #32]
  adrp   x21, #561152
  stp   x19, x20, [sp, #16]
  str   x23, [sp, #48]
  orr   x23, xzr, x0
  bl   strlen	// <strlen>
  ldr   x20, [x21, #1672]
  orr   x19, xzr, x0
  ldr   x0, [x20]
  tbnz   w0, #0x8000, puts_148	// <puts+148>
  ldr   x1, [x20, #136]
  mrs   x22, tpidr_el0
  sub   x22, x22, #1776
  ldr   x0, [x1, #8]
  cmp   x0, x22
  b.eq   puts_376	// <puts+376>
  movz   w0, #1, LSL #0
puts_76:
  ldaxr   x2, xzr, [x1]
  cbnz   w2, puts_92	// <puts+92>
  stxr   x0, x3, [x1]
  cbnz   w3, puts_76	// <puts+76>
puts_92:
  cmp   w2, #0
  b.ne   puts_420	// <puts+420>
puts_100:
  ldr   x1, [x20, #136]
  ldr   x0, [x21, #1672]
  str   x22, [x1, #8]
puts_112:
  ldr   x2, [x1, #4]
  add   w2, w2, #1
  str   x2, [x1, #4]
  ldr   x1, [x0, #192]
  cbz   w1, puts_160	// <puts+160>
puts_132:
  adds   w1, #1
  b.eq   puts_168	// <puts+168>
puts_140:
  movn   w19, #0, LSL #0
  b   puts_276	// <puts+276>
puts_148:
  orr   x0, xzr, x20
  ldr   x1, [x0, #192]
  cbnz   w1, puts_132	// <puts+132>
puts_160:
  movn   w1, #0, LSL #0
  str   x1, [x0, #192]
puts_168:
  adrp   x2, #368640
  adrp   x1, #368640
  ldr   x22, [x0, #216]
  ldr   x2, [x2, #264]
  ldr   x1, [x1, #272]
  sub   x3, x22, x2
  sub   x1, x1, x2
  cmp   x1, x3
  b.ls   puts_384	// <puts+384>
puts_204:
  ldr   x3, [x22, #56]
  orr   x2, xzr, x19
  orr   x1, xzr, x23
  blr   x3
puts_220:
  cmp   x19, x0
  b.ne   puts_140	// <puts+140>
  ldr   x0, [x21, #1672]
  ldp   x1, x2, [x0, #40]
  cmp   x1, x2
  b.cs   puts_396	// <puts+396>
  add   x2, x1, #1
  str   x2, [x0, #40]
  movz   w0, #10, LSL #0
  strb   w0, [w1]
puts_260:
  add   x19, x19, #1
  orr   x0, xzr, #2147483647
  cmp   x19, x0
  csel   x19, x19, x0, ls
puts_276:
  ldr   x0, [x20]
  tbnz   w0, #0x8000, puts_304	// <puts+304>
  ldr   x0, [x20, #136]
  ldr   x1, [x0, #4]
  sub   w1, w1, #1
  str   x1, [x0, #4]
  cbz   w1, puts_328	// <puts+328>
puts_304:
  orr   w0, wzr, w19
  ldr   x23, [sp, #48]
  ldp   x19, x20, [sp, #16]
  ldp   x21, x22, [sp, #32]
  ldp   x29, x30, [sp], #64
  ret   
puts_328:
  str   xzr, [x0, #8]
puts_332:
  ldxr   x2, xzr, [x0]
  stlxr   x1, x3, [x0]
  cbnz   w3, puts_332	// <puts+332>
  cmp   w2, #1
  b.le   puts_304	// <puts+304>
  movz   x1, #129, LSL #0
  movz   x2, #1, LSL #0
  movz   x3, #0, LSL #0
  movz   x8, #98, LSL #0
  svc   #0x0
  b   puts_304	// <puts+304>
puts_376:
  orr   x0, xzr, x20
  b   puts_112	// <puts+112>
puts_384:
  bl   _IO_vtable_check	// <_IO_vtable_check>
  ldr   x0, [x21, #1672]
  b   puts_204	// <puts+204>
puts_396:
  movz   w1, #10, LSL #0
  bl   __overflow	// <__overflow>
  adds   w0, #1
  b.ne   puts_260	// <puts+260>
  movn   w19, #0, LSL #0
  b   puts_276	// <puts+276>
puts_420:
  orr   x0, xzr, x1
  bl   __lll_lock_wait_private	// <__lll_lock_wait_private>
  b   puts_100	// <puts+100>
  ldr   x1, [x20]
  orr   x4, xzr, x0
  tbnz   w1, #0x8000, puts_464	// <puts+464>
  ldr   x0, [x20, #136]
  ldr   x1, [x0, #4]
  sub   w1, w1, #1
  str   x1, [x0, #4]
  cbz   w1, puts_472	// <puts+472>
puts_464:
  orr   x0, xzr, x4
  bl   _Unwind_Resume	// <_Unwind_Resume>
puts_472:
  str   xzr, [x0, #8]
puts_476:
  ldxr   x2, xzr, [x0]
  stlxr   x1, x3, [x0]
  cbnz   w3, puts_476	// <puts+476>
  cmp   w2, #1
  b.le   puts_464	// <puts+464>
  movz   x1, #129, LSL #0
  movz   x2, #1, LSL #0
  movz   x3, #0, LSL #0
  movz   x8, #98, LSL #0
  svc   #0x0
  b   puts_464	// <puts+464>

_IO_file_xsputn:
  stp   x29, x30, [sp, #-64]!
  add   x29, sp, #0
  str   x19, [sp, #16]
  movz   x19, #0, LSL #0
  cbz   x2, _IO_file_xsputn_200	// <_IO_file_xsputn+200>
  stp   x22, x23, [x29, #40]
  orr   x22, xzr, x1
  ldr   x1, [x0]
  orr   x19, xzr, x2
  str   x20, [x29, #24]
  movz   w2, #2560, LSL #0
  str   x24, [x29, #56]
  and   w1, w1, w2
  orr   x20, xzr, x0
  cmp   w1, w2
  ldr   x0, [x0, #40]
  b.eq   _IO_file_xsputn_216	// <_IO_file_xsputn+216>
  ldr   x2, [x20, #48]
  str   x21, [x29, #32]
  cmp   x2, x0
  b.hi   _IO_file_xsputn_296	// <_IO_file_xsputn+296>
_IO_file_xsputn_84:
  orr   x23, xzr, x19
_IO_file_xsputn_88:
  adrp   x1, #352256
  adrp   x0, #352256
  ldr   x21, [x20, #216]
  ldr   x1, [x1, #776]
  ldr   x0, [x0, #784]
  sub   x2, x21, x1
  sub   x0, x0, x1
  cmp   x0, x2
  b.ls   _IO_file_xsputn_536	// <_IO_file_xsputn+536>
_IO_file_xsputn_124:
  ldr   x2, [x21, #24]
  movn   w1, #0, LSL #0
  orr   x0, xzr, x20
  blr   x2
  adds   w0, #1
  b.eq   _IO_file_xsputn_388	// <_IO_file_xsputn+388>
  ldp   x1, x0, [x20, #56]
  orr   x21, xzr, x23
  sub   x0, x0, x1
  cmp   x0, #127
  b.ls   _IO_file_xsputn_180	// <_IO_file_xsputn+180>
  udiv   x21, x23, x0
  msub   x21, x23, x21, x0
  sub   x21, x23, x21
_IO_file_xsputn_180:
  cbnz   x21, _IO_file_xsputn_416	// <_IO_file_xsputn+416>
_IO_file_xsputn_184:
  cbnz   x23, _IO_file_xsputn_472	// <_IO_file_xsputn+472>
  ldp   x20, x21, [x29, #24]
  ldp   x22, x23, [x29, #40]
  ldr   x24, [x29, #56]
_IO_file_xsputn_200:
  orr   x0, xzr, x19
  ldr   x19, [sp, #16]
  ldp   x29, x30, [sp], #64
  ret   
_IO_file_xsputn_216:
  ldr   x2, [x20, #64]
  sub   x2, x2, x0
  cmp   x19, x2
  b.hi   _IO_file_xsputn_464	// <_IO_file_xsputn+464>
  add   x1, x22, x19
  cmp   x22, x1
  b.cs   _IO_file_xsputn_284	// <_IO_file_xsputn+284>
  ldurb   w3, [w1, #-1]
  sub   x1, x1, #1
  cmp   w3, #10
  b.ne   _IO_file_xsputn_276	// <_IO_file_xsputn+276>
  b   _IO_file_xsputn_512	// <_IO_file_xsputn+512>
_IO_file_xsputn_264:
  ldrb   w3, [w1, #-1]!
  cmp   w3, #10
  b.eq   _IO_file_xsputn_512	// <_IO_file_xsputn+512>
_IO_file_xsputn_276:
  cmp   x22, x1
  b.ne   _IO_file_xsputn_264	// <_IO_file_xsputn+264>
_IO_file_xsputn_284:
  movz   x24, #0, LSL #0
  str   x21, [x29, #32]
  b   _IO_file_xsputn_308	// <_IO_file_xsputn+308>
_IO_file_xsputn_296:
  sub   x2, x2, x0
_IO_file_xsputn_300:
  cbz   x2, _IO_file_xsputn_84	// <_IO_file_xsputn+84>
  movz   x24, #0, LSL #0
_IO_file_xsputn_308:
  cmp   x19, x2
  orr   x1, xzr, x22
  csel   x21, x19, x2, ls
  orr   x2, xzr, x21
  add   x22, x22, x21
  bl   memcpy	// <memcpy>
_IO_file_xsputn_332:
  sub   x23, x19, x21
  add   x0, x0, x21
  ldr   x21, [x29, #32]
  str   x0, [x20, #40]
_IO_file_xsputn_348:
  adds   x23, x24
  b.ne   _IO_file_xsputn_556	// <_IO_file_xsputn+556>
  sub   x19, x19, x23
  ldr   x20, [x29, #24]
  orr   x0, xzr, x19
  ldr   x24, [x29, #56]
  ldp   x22, x23, [x29, #40]
  ldr   x19, [sp, #16]
simpoint_start:
  ldp   x29, x30, [sp], #64
  ret   
_IO_file_xsputn_388:
  sub   x19, x19, x23
  cmp   x23, #0
  csinv   x19, x19, xzr, ne
  ldr   x24, [x29, #56]
  ldp   x20, x21, [x29, #24]
  ldp   x22, x23, [x29, #40]
  b   _IO_file_xsputn_200	// <_IO_file_xsputn+200>
_IO_file_xsputn_416:
  orr   x2, xzr, x21
  orr   x1, xzr, x22
  orr   x0, xzr, x20
  bl   new_do_write	// <new_do_write>
  sub   x23, x23, x0
  cmp   x21, x0
  b.ls   _IO_file_xsputn_184	// <_IO_file_xsputn+184>
  sub   x19, x19, x23
  ldr   x24, [x29, #56]
  ldp   x20, x21, [x29, #24]
  ldp   x22, x23, [x29, #40]
  b   _IO_file_xsputn_200	// <_IO_file_xsputn+200>
_IO_file_xsputn_464:
  str   x21, [x29, #32]
  b   _IO_file_xsputn_300	// <_IO_file_xsputn+300>
_IO_file_xsputn_472:
  add   x1, x22, x21
  orr   x2, xzr, x23
  orr   x0, xzr, x20
  bl   _IO_default_xsputn	// <_IO_default_xsputn>
  sub   x0, x23, x0
  ldr   x24, [x29, #56]
  sub   x19, x19, x0
  ldp   x20, x21, [x29, #24]
  ldp   x22, x23, [x29, #40]
  b   _IO_file_xsputn_200	// <_IO_file_xsputn+200>
_IO_file_xsputn_512:
  sub   x2, x1, x22
  adds   x2, x2, #1
  b.ne   _IO_file_xsputn_544	// <_IO_file_xsputn+544>
  orr   x23, xzr, x19
  movz   x24, #1, LSL #0
  b   _IO_file_xsputn_348	// <_IO_file_xsputn+348>
_IO_file_xsputn_536:
  bl   _IO_vtable_check	// <_IO_vtable_check>
  b   _IO_file_xsputn_124	// <_IO_file_xsputn+124>
_IO_file_xsputn_544:
  movz   x24, #1, LSL #0
  str   x21, [x29, #32]
  b   _IO_file_xsputn_308	// <_IO_file_xsputn+308>
_IO_file_xsputn_556:
  str   x21, [x29, #32]
  b   _IO_file_xsputn_88	// <_IO_file_xsputn+88>
  nop   

strlen:
  and   x4, x0, #4095
  orr   x8, xzr, #72340172838076673
  cmp   x4, #4080
  b.gt   strlen_272	// <strlen+272>
  ldp   x2, x3, [x0]
  sub   x4, x2, x8
  orr   x5, x2, #9187201950435737471
  sub   x6, x3, x8
  orr   x7, x3, #9187201950435737471
  bics   x4, x4, x5
  bic   x5, x6, x7
  ccmp   x5, #0, #0, eq
  b.eq   strlen_80	// <strlen+80>
  csel   x4, x4, x5, cc
  movz   x0, #8, LSL #0
  rev   x4, x4
  clz   x4, x4
  csel   x0, xzr, x0, cc
  add   x0, x0, x4, LSR #3
  ret   
strlen_80:
  and   x1, x0, #18446744073709551600
  sub   x1, x1, #16
strlen_88:
  ldp   x2, x3, [x1, #32]!
strlen_92:
  sub   x4, x2, x8
  sub   x6, x3, x8
  orr   x5, x4, x6
  ands   x5, x8, LSL #7
  b.ne   strlen_140	// <strlen+140>
  ldp   x2, x3, [x1, #16]
  sub   x4, x2, x8
  sub   x6, x3, x8
  orr   x5, x4, x6
  ands   x5, x8, LSL #7
  b.eq   strlen_88	// <strlen+88>
  add   x1, x1, #16
strlen_140:
  orr   x5, x2, #9187201950435737471
  orr   x7, x3, #9187201950435737471
  bics   x4, x4, x5
  bic   x5, x6, x7
  ccmp   x5, #0, #0, eq
  b.eq   strlen_196	// <strlen+196>
strlen_164:
  csel   x4, x4, x5, cc
  sub   x0, x1, x0
  rev   x4, x4
  add   x5, x0, #8
  clz   x4, x4
  csel   x0, x0, x5, cc
  add   x0, x0, x4, LSR #3
  ret   
strlen_196:
  ldp   x2, x3, [x1, #16]!
  sub   x4, x2, x8
  orr   x5, x2, #9187201950435737471
  sub   x6, x3, x8
  orr   x7, x3, #9187201950435737471
  bics   x4, x4, x5
  bic   x5, x6, x7
  ccmp   x5, #0, #0, eq
  b.ne   strlen_164	// <strlen+164>
  ldp   x2, x3, [x1, #16]!
  sub   x4, x2, x8
  orr   x5, x2, #9187201950435737471
  sub   x6, x3, x8
  orr   x7, x3, #9187201950435737471
  bics   x4, x4, x5
  bic   x5, x6, x7
  ccmp   x5, #0, #0, eq
  b.eq   strlen_196	// <strlen+196>
  b   strlen_164	// <strlen+164>
strlen_272:
  and   x1, x0, #18446744073709551600
  ldp   x2, x3, [x1]
  ubfm   x4, x0, #61, #60
  movn   x7, #0, LSL #0
  lslv   x4, x7, x4
  orr   x4, x4, #9259542123273814144
  orn   x2, x2, x4
  orn   x5, x3, x4
  ands   x0, #8
  csel   x2, x2, x7, eq
  csel   x3, x3, x5, eq
  b   strlen_92	// <strlen+92>
  nop   
  nop   
  nop   
  nop   
  nop   
  nop   
  nop   

memcpy:
  prfm   PLDL1KEEP, [x1]
  add   x4, x1, x2
  add   x5, x0, x2
  cmp   x2, #16
  b.ls   memcpy_80	// <memcpy+80>
  cmp   x2, #96
  b.hi   memcpy_224	// <memcpy+224>
  sub   x14, x2, #1
  ldp   x6, x7, [x1]
  tbnz   w14, #0x40, memcpy_176	// <memcpy+176>
  ldp   x12, x13, [x4, #-16]
  tbz   w14, #0x20, memcpy_64	// <memcpy+64>
  ldp   x8, x9, [x1, #16]
  ldp   x10, x11, [x4, #-32]
  stp   x8, x9, [x0, #16]
  stp   x10, x11, [x5, #-32]
memcpy_64:
  stp   x6, x7, [x0]
  stp   x12, x13, [x5, #-16]
  ret   
  nop   
memcpy_80:
  cmp   x2, #8
  b.cc   memcpy_112	// <memcpy+112>
  ldr   x6, [x1]
  ldur   x7, [x4, #-8]
  str   x6, [x0]
  stur   x7, [x5, #-8]
  ret   
  nop   
memcpy_112:
  tbz   w2, #0x4, memcpy_136	// <memcpy+136>
  ldr   x6, [x1]
  ldur   x7, [x4, #-4]
  str   x6, [x0]
  stur   x7, [x5, #-4]
  ret   
memcpy_136:
  cbz   x2, memcpy_168	// <memcpy+168>
  ubfm   x14, x2, #1, #63
  ldrb   w6, [w1]
  ldurb   w7, [w4, #-1]
  ldrb   w8, [w1, w14]
  strb   w6, [w0]
  strb   w8, [w0, w14]
  sturb   w7, [w5, #-1]
memcpy_168:
  ret   
  nop   
memcpy_176:
  ldp   x8, x9, [x1, #16]
  ldp   x10, x11, [x1, #32]
  ldp   x12, x13, [x1, #48]
  ldp   x1, x2, [x4, #-32]
  ldp   x4, x3, [x4, #-16]
  stp   x6, x7, [x0]
  stp   x8, x9, [x0, #16]
  stp   x10, x11, [x0, #32]
  stp   x12, x13, [x0, #48]
  stp   x1, x2, [x5, #-32]
  stp   x4, x3, [x5, #-16]
  ret   
memcpy_224:
  and   x14, x0, #15
  and   x3, x0, #18446744073709551600
  ldp   x12, x13, [x1]
  sub   x1, x1, x14
  add   x2, x2, x14
  ldp   x6, x7, [x1, #16]
  stp   x12, x13, [x0]
  ldp   x8, x9, [x1, #32]
  ldp   x10, x11, [x1, #48]
  ldp   x12, x13, [x1, #64]!
  subs   x2, x2, #144
  b.ls   memcpy_312	// <memcpy+312>
memcpy_272:
  stp   x6, x7, [x3, #16]
  ldp   x6, x7, [x1, #16]
  stp   x8, x9, [x3, #32]
  ldp   x8, x9, [x1, #32]
  stp   x10, x11, [x3, #48]
  ldp   x10, x11, [x1, #48]
  stp   x12, x13, [x3, #64]!
  ldp   x12, x13, [x1, #64]!
  subs   x2, x2, #64
  b.hi   memcpy_272	// <memcpy+272>
memcpy_312:
  ldp   x1, x2, [x4, #-64]
  stp   x6, x7, [x3, #16]
  ldp   x6, x7, [x4, #-48]
  stp   x8, x9, [x3, #32]
  ldp   x8, x9, [x4, #-32]
  stp   x10, x11, [x3, #48]
  ldp   x10, x11, [x4, #-16]
  stp   x12, x13, [x3, #64]
  stp   x1, x2, [x5, #-64]
  stp   x6, x7, [x5, #-48]
  stp   x8, x9, [x5, #-32]
  stp   x10, x11, [x5, #-16]
  ret   
  nop   
  cbz   x14, memcpy_520	// <memcpy+520>
  add   x4, x1, x2
  add   x5, x0, x2
  and   x14, x5, #15
  ldp   x12, x13, [x4, #-16]
  sub   x4, x4, x14
  sub   x2, x2, x14
  ldp   x6, x7, [x4, #-16]
  stp   x12, x13, [x5, #-16]
  ldp   x8, x9, [x4, #-32]
  ldp   x10, x11, [x4, #-48]
  ldp   x12, x13, [x4, #-64]!
  sub   x5, x5, x14
  subs   x2, x2, #128
  b.ls   memcpy_472	// <memcpy+472>
  nop   
memcpy_432:
  stp   x6, x7, [x5, #-16]
  ldp   x6, x7, [x4, #-16]
  stp   x8, x9, [x5, #-32]
  ldp   x8, x9, [x4, #-32]
  stp   x10, x11, [x5, #-48]
  ldp   x10, x11, [x4, #-48]
  stp   x12, x13, [x5, #-64]!
  ldp   x12, x13, [x4, #-64]!
  subs   x2, x2, #64
  b.hi   memcpy_432	// <memcpy+432>
memcpy_472:
  ldp   x2, x3, [x1, #48]
  stp   x6, x7, [x5, #-16]
  ldp   x6, x7, [x1, #32]
  stp   x8, x9, [x5, #-32]
  ldp   x8, x9, [x1, #16]
  stp   x10, x11, [x5, #-48]
  ldp   x10, x11, [x1]
  stp   x12, x13, [x5, #-64]
  stp   x2, x3, [x0, #48]
  stp   x6, x7, [x0, #32]
  stp   x8, x9, [x0, #16]
  stp   x10, x11, [x0]
memcpy_520:
  ret   
unknown    (inst 0x000000)

__libc_check_standard_fds:
__libc_setup_tls:
__assert_fail:
_setjmp:
abort:
exit:
__cxa_atexit:
__libc_fatal:
_IO_vtable_check:
new_do_write:
__overflow:
_IO_default_xsputn:
__lll_lock_wait_private:
_dl_debug_initialize:
_dl_aux_init:
__libc_init_secure:
_dl_discover_osversion:
__libc_init_first:
_Unwind_Resume:
  ret
