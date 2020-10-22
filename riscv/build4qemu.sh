#!/bin/bash

AS=riscv64-unknown-linux-gnu-as
GCC=riscv64-unknown-linux-gnu-gcc
OBJDUMP=riscv64-unknown-linux-gnu-objdump

test_name=$1
[ -f $test_name.S ] || exit

$GCC -march=rv64gc -mabi=lp64 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -Tfor-qemu.ld $test_name.S -o $test_name
$OBJDUMP -D $test_name > $test_name-dump.S

ls -l $test_name*
grep \<_start\>\: -rwn $test_name-dump.S -A 50
