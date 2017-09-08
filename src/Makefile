### Based on http://www.avrfreaks.net/sites/default/files/Makefile.txt
### Just change variable PRJ to the name of the project.
### It finds all the *.c files an compiles them
PRJ		=	avr-psu
MCU		=	atmega328p
FCPU		=	16000000UL
BAUD		=	19200
SRCS		=	$(wildcard *.c)
OBJS		=	$(SRCS:.c=.o)
LSTS		=	$(SRCS:.c=.lst)
PORT		=	/dev/ttyUSB0
OPT		=	s
CFLAGS		=	-g -mmcu=$(MCU) -DF_CPU=$(FCPU) -DBAUD=$(BAUD) -O$(OPT) -Wall -I.
LDFLAGS		=	-Wl,-Map,$(PRJ).map,--cref
LIBS		=	-Wl,-u,vfprint -lprintf_min -Wl,-u,vfscanf -lscanf_min
CC		=	avr-gcc
OBJCOPY		=	avr-objcopy
OBJDUMP		=	avr-objdump
SIZE		=	avr-size

HEXSIZE		=	$(SIZE) --target=ihex $(PRJ).hex
ELFSIZE		=	$(SIZE) -x -A $(PRJ).elf
ALLCFLAGS	= 	$(CFLAGS)
.PHONY: all clean install sizebefore sizeafter gccversion program

.c.elf:
	$(CC) $(CFLAGS) -o $@ $<

.elf.hex:
	$(OBJCOPY) -O ihex -R .eeprom $< $@

all: sizebefore gccversion $(PRJ).hex $(PRJ).elf sizeafter

sizebefore:
	@if [ -f $(PRJ).elf ]; then echo; echo "Size before:"; $(ELFSIZE); echo; fi

sizeafter:
	@if [ -f $(PRJ).elf ]; then echo; echo "Size after:"; $(ELFSIZE); echo; fi

gccversion:
	@$(CC) --version

program: install

%.hex: %.elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@

%.eep: %.elf
	$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom="alloc,load" --change-section-lma .eeprom=0 -O ihex $< $@

%.lss: %.elf
	$(OBJDUMP) -g -S $< > $@

%.sym: %.elf
	avr-nm -n $< > $@

%.elf: $(OBJ)
	$(CC) $(CFLAGS) $(OBJS) --output $@ $(LDFLAGS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

%.s: %.c
	$(CC) -S $(CFLAGS) $< -o $@

%.d: %.c
	set -e; $(CC) -MM $(CFLAGS) $< \
	| sed 's,\(.*\)\.o[ :]*,\1.o \1.d : ,g' > $@; \
	[ -s $@ ] || rm -f $@

include $(SRCS:.c=.d)

$(PRJ).elf: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	@rm -rfv *.elf *.hex *.eep *.obj *.cof *.map *.sym *.lnk *.lss *.lst $(LST) $(OBJS) *.d

install: $(PRJ).hex
	avrdude -c arduino -p $(MCU) -P $(PORT) -b 115200 -U flash:w:$(PRJ).hex
