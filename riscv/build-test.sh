#!/bin/bash

TOOL_DIR=/opt/riscv/bin
AS=$TOOL_DIR/riscv64-unknown-linux-gnu-as
GCC=$TOOL_DIR/riscv64-unknown-linux-gnu-gcc
OBJDUMP=$TOOL_DIR/riscv64-unknown-linux-gnu-objdump

test_name=$1
[ -f $test_name.S ] || exit

$AS -o $test_name.o $test_name.S
$GCC -static -o $test_name $test_name.o
$OBJDUMP -D $test_name > $test_name-dump.S
ls -l $test_name*
grep \<main\>\: -rwn $test_name-dump.S -A 50
