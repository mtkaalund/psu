PROJECTNAME=avr-psu
SOURCES=main.c

MCU=atmega328p
F_CPU=16000000

# additional includes (e.g. -I/path/to/mydir)
INC=-I/usr/lib/avr -I./include

CDEFS= -DF_CPU=$(F_CPU)UL -DBAUD=9600
LIBS=

# Optimization level,
# use s (size opt), 1, 2, 3 or 0 (off)
OPTLEVEL=s
PROGRAMMER_MCU=m328p
AVRDUDE_PROGRAMMERID=arduino
AVRDUDE_BAUDRATE=115200
AVRDUDE_PORT=/dev/ttyUSB0

#### FLAGS ####
HEXFORMAT=ihex
# compiler
CFLAGS= $(CDEFS) -I. $(INC) -g -mmcu=$(MCU) -O$(OPTLEVEL)	\
	-fpack-struct -fshort-enums				\
	-funsigned-bitfields -funsigned-char			\
	-Wall -Wstrict-prototypes				\
	-Wa,-ahlms=$(firstword					\
	$(filter %.lst, $(<:.c=.lst)))
# linker
LDFLAGS=-Wl,-Map,$(TRG).map -mmcu=$(MCU) \
	-lm $(LIBS)
### executables ###
CC=avr-gcc
OBJCOPY=avr-objcopy
OBJDUMP=avr-objdump
SIZE=avr-size
AVRDUDE=avrdude
REMOVE=rm -f

### target names ###
TRG=$(PROJECTNAME).out
DUMPTRG=$(PROJECTNAME).s

HEXROMTRG=$(PROJECTNAME).hex
HEXTRG=$(HEXROMTRG) $(PROJECTNAME).ee.hex
GBINITFILE=gdbinit-$(PROJECTNAME)

OBJDEPS=$(SOURCES:.c=.o)

LST=$(filter %.lst, $(OBJDEPS:.o=.lst))

GENASMFILES=$(filter %.s, $(OBJDEPS:.o=.s))

.SUFFIXES : .c .out .s .hex .ee.hex .h
.PHONY: writeflash clean stats gdbinit
# Make targets:
# all, disasm, stats, hex, writeflash/install, clean
all: $(TRG)

disasm: $(DUMPTRG) stats

stats: $(TRG)
	$(OBJDUMP -g $(TRG)
	$(SIZE) $(TRG)

hex: $(HEXTRG)

writeflash: hex
	$(AVRDUDE) -c $(AVRDUDE_PROGRAMMERID) 		\
	-p $(PROGRAMMER_MCU) -P $(AVRDUDE_PORT) -e	\
	-U flash:w:$(HEXROMTRG) -b $(AVRDUDE_BAUDRATE)

install: writeflash

$(DUMPTRG): $(TRG)
	$(OBJDUMP) -S  $< > $@

$(TRG): $(OBJDEPS)
	$(CC) $(LDFLAGS) -o $(TRG) $(OBJDEPS)

### Generating assembly ###
# ASM from C
%.s: %.c
	$(CC) -S $(CFLAGS) $< -o $@
# asm from (hand coded) asm
%.s: %.S
	$(CC) -S $(ASMFLAGS) $< > $@

### Generating object files ###
# object from c
.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

# object from asm
.S.o :
	$(CC) $(ASMFLAGS) -c $< -o $@

### Generating hex files ###
# hex files from elf
.out.hex:
	$(OBJCOPY) -j .text			\
		-j .data			\
		-O $(HEXFORMAT) $< $@	

.out.ee.hex:
	$(OBJCOPY) -j .eeprom			\
		--change-section-lma .eeprom=0	\
		-O $(HEXFORMAT) $< $@

### Generating a gdb initialisation file 	###
### Use by launching simulavr and avr-gdb:	###
###  avr-gdb -x gdbinit-myproject		###
gdbinit: $(GDBINITFILE)

$(GDBINITFILE): $(TRG)
	@echo "file $(TRG)" > $(GDBINITFILE)
	@echo "target remote localhost:1212" 	\
			>> $(GDBINITFILE)
	@echo "load"	>> $(GDBINITFILE)
	@echo "break main" >> $(GDBINITFILE)
	@echo "continue" >> $(GDBINITFILE)
	@echo
	@echo "Use 'avr-gdb -x $(GDBINITFILE)'"

### Clean up ###
clean:
	$(REMOVE) $(TRG) $(TRG).map $(DUMPTRG)
	$(REMOVE) $(OBJDEPS)
	$(REMOVE) $(LST) $(GDBINITFILE)
	$(REMOVE) $(GENASMFILES)
	$(REMOVE) $(HEXTRG)
