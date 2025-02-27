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
ifndef HOST
HOST=i686-elf
endif
CC=$(HOST)-gcc
AS=$(HOST)-as
LD=$(HOST)-ld
OC=$(HOST)-objcopy

# non-GCC assembler
ASNG=nasm

# build flags
CFLAGS=-O0 -g -ffreestanding -Wall -Wextra -DDEBUG -DARCH_MEMCPY -DARCH_MEMSET -DTERM_VGATEXT -DKINIT_MM_FIRST -DKSTDERR_SER
LDFLAGS=-nostdlib -lgcc
ASFLAGS=
ASNGFLAGS=-f elf -g -dARCH_MEMCPY -dARCH_MEMSET
