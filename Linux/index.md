LINUX
=====
Na tej strani lahko najdete nekaj napotkov za Linux-e...  

![MyLinuxSetup](./img20-02-08-21-38-49.png)

- TOC
{:toc}

INSTALLATION
==============

PACMAN
------

YAY
---

TERMINAL (SHELL & PROGRAMS & COMMANDS)
========================================

SHELL
-----

### ZSH

TERMINAL EMULATOR
-----------------

### TERMITE

### TERMINATOR

PROGRAMS
--------

### RANGER

### NEOVIM

### DMENU

PROGRAM UTILS
-------------

### GENERAL EXPRESSIONS

### GREP

### SED

### AWK

PROGRAMS (GUI-like)
===================

Za vsak program lahko določimo v katero katero spada in kako ga zaženemo. Te možnosti programa so zapisane v:  
`/usr/share/applications/IME_PROGRAMA.desktop`

katere kategorije so vpisane v vseh programih lahko pogledamo z ukazom:  

```bash
#! /bin/zsh
grep Categories /usr/share/applications/* | sed 's/^.*=//;s/\;/\n/g' | sort | uniq
echo "To je test..."
```

OFFICE
------

HARDWARE
========

ARDUINO
-------

### ARDUINO WAVGAT

1. prenesi [WAVGAT drivers]( https://github.com/ericvb/Arduino-WavGat-Drivers )
2. skopiraj ./update/* v ~/Arduino/*
3. za Linuxe popravi:
    
    `../hardware/WAV/avr/boards.txt:lardu_328p.bootloader.file=lgt8fx8p\optiboot_lgt8f328p.hex`
    `../hardware/WAV8F/boards.txt:lardu_328p.bootloader.file=lgt8fx8p\optiboot_lgt8f328p.hex`

4. ponovno zaženi Arduino IDE in izberi `Tools - Boards - WAVGAT UNO R3`



