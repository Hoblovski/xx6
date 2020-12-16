K = kernel
I = include
S = scripts

TOOLPREFIX = riscv64-unknown-elf-
CC = $(TOOLPREFIX)gcc
AS = $(TOOLPREFIX)gas
LD = $(TOOLPREFIX)ld
OBJCOPY = $(TOOLPREFIX)objcopy
OBJDUMP = $(TOOLPREFIX)objdump
QEMU = qemu-system-riscv64

KERNIMG ?= k


CFLAGS = -Wall -Werror -O -fno-omit-frame-pointer -ggdb
CFLAGS += -MD
CFLAGS += -mcmodel=medany
CFLAGS += -ffreestanding -fno-common -nostdlib -mno-relax
CFLAGS += -I$(I)

ASFLAGS = -I$(I)

LDFLAGS = -z max-page-size=4096 -nostdlib

CPUS = 1
MEMSIZE = 128M

QEMUEXTRAOPTS ?=
QEMUOPTS = -machine virt -bios none -kernel $(KERNIMG) -m $(MEMSIZE) -smp $(CPUS) -nographic $(QEMUEXTRAOPTS)

##############################################################################
.PHONY: kernel qemu clean format FORCE print-%

KOBJS = \
	$(patsubst %.S,%.o,$(wildcard $K/*.S)) \
	$(patsubst %.c,%.o,$(wildcard $K/*.c))


$(KERNIMG): $(KOBJS) $S/kernel.ld FORCE
	$(LD) $(LDFLAGS) -T $S/kernel.ld -o $@ $(KOBJS)
	$(OBJDUMP) -S $@ > $@.s

kernel: $(KERNIMG)

qemu: $(KERNIMG)
	$(QEMU) $(QEMUOPTS)

clean:
	rm $(KERNIMG) $(KERNIMG).s */*.o */*.d

format:
	clang-format -i **/*.[ch]

FORCE:

# shell script integration
print-%:
	@echo $($(shell echo $(patsubst print-%,%,$@)))
