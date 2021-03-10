#!/bin/bash

AS=riscv64-linux-gnu-as
GCC=riscv64-linux-gnu-gcc
OBJDUMP=riscv64-linux-gnu-objdump

test_name=$1
[ -f $test_name.S ] || exit

GCC_FLAGS="-march=rv64gc -mabi=lp64 -static"
GCC_FLAGS+=" -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles"
GCC_FLAGS+=" -Tfor-spike.ld"
#GCC_FLAGS+=" -Tfor-qemu.ld"
$GCC $GCC_FLAGS $test_name.S -o $test_name
$OBJDUMP -D $test_name > $test_name-dump.S

ls -l $test_name*
grep \<_start\>\: -rwn $test_name-dump.S -A 50
