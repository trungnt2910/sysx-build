# target configuration file for x86

# target name
TARGET=x86

# archdirs
ARCHDIR=arch/$(TARGET)
# used in cases such as the Raspberry Pi family sharing the same code
ARCHDIR_FAMILY=
# used in cases such as the ARM architecture having common code for multiple platforms
ARCHDIR_ARCH=arch/x86cpu

# GCC toolchain
HOST=i686-elf
CC=$(HOST)-gcc
AS=$(HOST)-as
LD=$(HOST)-ld

# non-GCC assembler
ASNG=nasm

# build flags
CFLAGS=-O2 -g -ffreestanding -Wall -Wextra -DDEBUG -DTERM_SER
LDFLAGS=-nostdlib -lgcc
ASFLAGS=
ASNGFLAGS=-f elf -g
