LINUX
=====
Na tej strani lahko najdete nekaj napotkov za Linux-e...

![MyLinuxSetup]( ./image.png)

- TOC
{:toc}

INSTALLATION
==============

PACMAN
------
Package manager za ARCH. Nekaj splo/nih ukazov:

|      Akcija | ukaz                                                           |
|------------:|----------------------------------------------------------------|
| inštalacija | `sudo pacman -S ime_programa`                                  |
|    odstrani | `sudo pacman -Rns ime_programa`                                |
|   downgrade | `sudo pacman -U /var/cache/pacman/pkg/ime_programa.pkg.tar.xz` |
|    pkg info | `pacman -Q --info ime_programa`                                |

Nastavitev pacmana najdeš v datoteki: `/etc/pacman.conf`.

TRIZEN
------
Package manager za programe iz AUR repository-ja...

YAY
---
Še en package manager za AUR in ...

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
Cool "the best" File manager. Sicer napisan v pythonu, ampak še vedno hiter. Omogoča:

- vim bindings
- goto directory key shortcuts
- lahko kličeš svoje skripte
- preklop v shell (Shift+s)
- predogled filov: slike, video, programsko kodo
- ...

### NEOVIM

#### Avtomatsko popravljanje napak

najprej si zapomnimo mesto kjer smo `ms`, nato s spell-check-erjem najdemo napako `[s`, iz menuja izberemo 1. predlog `1z=` in skočimo nazaj na masto "s" `'s`  

```bash
:normal!  ms[s1z=`s<CR>
```

#### Save vim session
Zapimni si vse odprte dokumente:

```bash
:mksession! ~/.config/nvim/david_session.sav
```

### DMENU

Še en zelo uporaben `SUCKLESS` program. Dmenu je menu, ki prikaže poljuben text, uporabniku nudi izbiro iz menija in izbran text poda kot izhod. Na primer: meni z dvema izbirama bi izgledal takole:

```bash
echo "Prva moznost\nDruga moznost" | dmenu -l 10
```

### PANDOC
Program za pretvorbo dokumentov. Naveč ga uporabljam za pretvorbo iz `MARKDOWN` dokumentov v `PDF` dokumente. Na primer:  

```bash
pandoc --from markdown -F pandoc-crossref -F pandoc-citeproc --template eisvogel --listings --pdf-engine=xelatex index.md -o index.pdf
```

V verziji pandoc 2.8 mi niso delale slike...  

- odstraniš grffile iz templata in je ok (menda da delajo na tem...)

**Skripta**  
Lahko bi v templatu definral različne listingse.

``` vaja
VAJA: NAPETOSTNI POTENCIALI IN NAPETOST
Zanima me kako bi zgledalo tole v dokumenti, če bi podajal naloge za študente v taki obliki.
A je v tem listingsu vsaka vrstica naoisana v novi 
nrstici.
```

PROGRAM UTILS
-------------

### GENERAL EXPRESSIONS

| EXPRESSION | Funkcija                                          |
|:----------:|---------------------------------------------------|
|    [0-9]   | Številka                                          |
|    [a-z]   | Mala črka                                         |
|      .     | Katerikoli znak                                   |
|      ^     | Začetek vrstice                                   |
|      $     | Konec vrstice                                     |
|      *     | Predhodni znak se lahko ponovi nikoli ali večkrat |

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

### YENKA

Program yenka je odličen program za simulacijo električnih vezij. Inštalacija na Linux sistem pa je lahko nekoliko bolj zapletena...  

1. Namestitveno datoteko lahko dobite:  
    
    wget http://yenka.com/file/YK/3.2.7/Yenka_3.2.7.package

2. Nato omogočiš izvajanje te datoteke z vašimi pravicami:  
    
    sudo chmod +x Yenka_3.2.7.package

3. ...in poženete datoteko:  
    
    sudo ./Yenka_3.2.7.package

#### Troubleshooting

Yenka je še vedno 32-bitni program in vam ne bo dolovala, če vaš OS podpira le 64-bitne programe... v tem primeru dobite naslednjo težavo:  
    
    ...file Yenka.app does not exists

če boste preverili v namestitvenem direktoriju:

    ls -l /usr/share/Yenka/Software
   - - - - - - - - - - - - - - - - - - - -  
    total 28
    -rwxrwxrwx  1 root root    0 Mar 12 17:29 cclibs
    drwxr-xr-x 15 root root 4096 Mar 12 17:27 Domains
    drwxr-xr-x  6 root root 4096 Mar 12 17:30 Kernel
    -rwxr-xr-x  1 root root 8356 Mar 12 17:29 licensed
    -rwxr-xr-x  1 root root 7396 Mar 12 17:29 Yenka.app

vidimo, da file obstaja... Torej, rešiev je:  

- Ali naložite podporo za izvajanje 32-bitnih programov,
- ali naložite program Wine se vam bodo naložile tudi te knjižnice:  

    
    faudio-20.03-1  lib32-acl-2.2.53-1  lib32-attr-2.4.48-1  lib32-bzip2-1.0.8-2  lib32-dbus-1.12.16-2
    lib32-expat-2.2.9-1  lib32-faudio-20.03-1  lib32-fontconfig-2:2.13.91+24+g75eadca-2  lib32-freetype2-2.10.1-2
    lib32-gcc-libs-9.3.0-1  lib32-gettext-0.20.1-1  lib32-glib2-2.64.1-1  lib32-glu-9.0.1-1  lib32-harfbuzz-2.6.4-2
    lib32-icu-65.1-3  lib32-lcms2-2.9-1  lib32-libcap-2.33-1  lib32-libdrm-2.4.100-1  lib32-libelf-0.177-1
    lib32-libffi-3.2.1-2  lib32-libgcrypt-1.8.5-1  lib32-libglvnd-1.3.1-1  lib32-libgpg-error-1.36-1
    lib32-libice-1.0.10-1  lib32-libjpeg-turbo-2.0.4-1  lib32-libnl-3.5.0-1  lib32-libpcap-1.9.1-1
    lib32-libpciaccess-0.16-1  lib32-libpng-1.6.37-2  lib32-libsm-1.2.3-1  lib32-libtiff-4.1.0-1
    lib32-libusb-1.0.23-1  lib32-libx11-1.6.9-1  lib32-libxau-1.0.9-1  lib32-libxcb-1.13.1-1  lib32-libxcursor-1.2.0-1
    lib32-libxdamage-1.1.5-1  lib32-libxdmcp-1.1.3-1  lib32-libxext-1.3.4-1  lib32-libxfixes-5.0.3-2
    lib32-libxi-1.7.10-2  lib32-libxml2-2.9.10-1  lib32-libxrandr-1.5.2-1  lib32-libxrender-0.9.10-2
    lib32-libxshmfence-1.3-1  lib32-libxxf86vm-1.1.4-2  lib32-llvm-libs-9.0.1-1  lib32-lm_sensors-3.6.0-1
    lib32-lz4-1.9.2-1  lib32-mesa-19.3.4-3  lib32-ncurses-6.1-4  lib32-pcre-8.44-1  lib32-readline-8.0.0-1
    lib32-sdl2-2.0.12-1  lib32-systemd-245.2-1  lib32-util-linux-2.35.1-1  lib32-wayland-1.18.0-1  lib32-xz-5.2.4-1
    lib32-zlib-1.2.11-2  lib32-zstd-1.4.4-2  wine-5.4-1

in Yenka  DELA :)

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

### HP - PRINTERS

Imel sem težave s HP printerjem... rešil sem tako, da sem naložil nazaj:

- HPLIP ( hplip 1:3.19.11-4 ) in 
- CUPS ( cups 2.3.0-4 )

### INTEL GRAPHIC CARD

Če gre za **tearing** potem ustvari datoteko:

    /etc/X11/xorg.conf.d/20-intel.conf

in v njo daš naslednjo vsebino:

    Section "Device"
       Identifier  "Intel Graphics"
       Driver      "intel"
       Option      "TearFree"    "true"
    EndSection

