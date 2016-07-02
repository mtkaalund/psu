# PSU
My take on a avr controlled powersupply that is variable. 

Im going to use a transformer that I got, it is a 2x18V @ 1.8A. I also got a 230V input filter that is going to be put on the input before the transformator.

## Goals

- [ ] Can be controlled over uart
- [ ] Can regulate it is voltage output
- [ ] Can current limit it is output

## Hardware

For development Im going to use a cheap china arduino uno, which is using a atmega328p.

Im going to use 2 - 3 ADC's on it, one for sensing the current that is being used, one or two for sensing the voltage used.
