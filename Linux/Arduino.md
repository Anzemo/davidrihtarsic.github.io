# ARDUINO

## ARDUINO WAVGAT

1. prenesi [WAVGAT drivers]( https://github.com/ericvb/Arduino-WavGat-Drivers )
2. skopiraj ./update/* v ~/Arduino/*
3. za Linuxe popravi:
    
    `../hardware/WAV/avr/boards.txt:lardu_328p.bootloader.file=lgt8fx8p\optiboot_lgt8f328p.hex`
    `../hardware/WAV8F/boards.txt:lardu_328p.bootloader.file=lgt8fx8p\optiboot_lgt8f328p.hex`
4. ponovno zaženi Arduino IDE in izberi `Tools - Boards - WAVGAT UNO R3`

