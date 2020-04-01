## INTEL GRAPHIC CARD

Če gre za **tearing** potem ustvari datoteko:

    /etc/X11/xorg.conf.d/20-intel.conf

in v njo daš naslednjo vsebino:

    Section "Device"
       Identifier  "Intel Graphics"
       Driver      "intel"
       Option      "TearFree"    "true"
    EndSection


