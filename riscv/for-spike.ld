OUTPUT_ARCH( "riscv" )
/*OUTPUT_FORMAT("elf64-littleriscv") */
ENTRY( _start )
SECTIONS
{
  /DISCARD/ : { *(.note.gnu.build-id) }
  /* text: test code section */
  . = 0x80000000;
  .text : { *(.text) }
  /* data: Initialized data segment */
  .data : { *(.data) }
  .rodata : { *(.rodata) }
  .sdata : { *(.sdata) }
  .debug : { *(.debug) }
  . += 0x8000;
  stack_top = .;

  /* End of uninitalized data segement */
  _end = .;

  . = ALIGN(0x1000);
  .htif : { *(.htif) }
}
