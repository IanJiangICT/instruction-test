#!/bin/bash

TOOL_DIR=/home/jzy/gem5/arm64-tools/gcc-linux-gnu/bin
AS=$TOOL_DIR/aarch64-linux-gnu-as
GCC=$TOOL_DIR/aarch64-linux-gnu-gcc
OBJDUMP=$TOOL_DIR/aarch64-linux-gnu-objdump

test_name=$1
[ -f $test_name.S ] || exit

$AS -o $test_name.o $test_name.S
$GCC -static -o $test_name $test_name.o
$OBJDUMP -d $test_name > $test_name-dump.S
ls -l $test_name*
grep "<main>" -rwn $test_name-dump.S -A 20
