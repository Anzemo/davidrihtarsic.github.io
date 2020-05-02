# Simulacije fizikalnih pojavov

# Klasično opazovanje pojavov

Oglejmo si video simulacije enakomernega gibanja. Simulacijo smo izbrali zato, da lahko nadzorujemo hitrost, ki jo bomo kasneje lahko primerjali z izmerjeno.

![Simulacija enakomernega gibanja.](./slike/walking_man_veloc.png){#fig:walking_man_veloc.png}

Izmerimo vmesne čase oddaljenosti osebe na vsake 2 m in jih uredimo v tabeli.

Za meritev časov lahko uporabite spletno merilno uro [link](https://www.timeanddate.com/stopwatch/).

Ta spletna različica časovnega merilnika omogoča izvoz časov v beležnico in tako enostaven copy-paste v Excel.

Čase lahko pretvorimo v sekunde tako, da celico pomnožimo s 24h*60min*60sec (zaokrožimo na 3 dec)

Poizkus večkrat ponovimo in rezultate vnesemo v tabelo.

## PORAZDELITEV MERITEV

    =MIN(B3:U3)
    =MAX(B3:U3)

Naredimo rang od MIN - MAX in   

    =FREQUENCY(data; rang)

[Normalna porazdelitev podatkov](https://en.wikipedia.org/wiki/Standard_deviation)

## IZRAČUN POVPREČJA

Povprečna vrednost:  
    
    =AVERAGE(B3:U3)

Standardni odklon

    =STDDEV()

## NORMALNA PORAZDELITEV

[Normalna porazdelitev](https://en.wikipedia.org/wiki/Normal_distribution#Standard_deviation_and_coverage)

[Normalna porazdelitev - GEOGEBRA](https://www.geogebra.org/m/AxtegHsz)

Kolikšna je  verjetnost, da se povprečna vrednost nahaja v nekem območju?  

±1.00σ -> 68.27%
±1.65σ -> 90.11%
±2.00σ -> 95.45%

Verjetnost, da se vzorec nahaja v nekem območju X_min -> X_max

## Standardna napaka ocene pov. vrednosti
Označimo tudi z oznako SE

    =STDDEV(Range)/SQRT(N)

Da izberemo določen interval, moramo poznati vrednost Z. Le to dobimo z enačbo:  
<!--
Kako dobimo Z-vrednost v excelu?
-->
    =NORM.SINV(verjetnost)

Kjer "verjetnost" predstavlja verjetnost, da se povprečna vrednost nahaja v intervalu od -∞ .. z.

absplutna napaka = z*std.nap.oc.pov.vr.

### Interval zaupanja

    =CONFIDENCE(⍶,σ,N)  

kjer je:
- N = število vzorcev
- σ = standardna deviacija
- ⍶ = verjetnost, da pov. vred. ni v tem območju.

## Predstavitev podatka

povprečje ± abs.napaka

<!--
Zaokroževanje:
- podatka naj bo zaokrožen na mesto, ki ga podaja abs. napaka:  
    1.23 ± 0.3 nima smisla, saj se spremeni že 2. decimalka  
    pravilno: 1.2 ± 0.3
-->

# LINEARIZACIJA 

## NAKLON

    =SLOPE(y, x)

## PROSTI ČLEN

    =INTERCEPT(y, x)

## KORELACIJA

    =COREL()

## Standardna deivacija
je podobna σ - kot pri vzorčenju ene vrednosti. Pri linearizaciji pa upoštevamo, da "povprečna" vrednost sledi linearnemu trendu...

    =STEYX(y, x)
Ampak to je std. odklon Y, če bi imeli konstanten X. Na to "razpršenost" lahko vpliva:  
- negotovost X-a
- negotovost k-ja in 
- negotovost n-ja

## STANDARDNA NAPAKA OCENE LINEARNEGA KOEFICIENTA

    =LINEST(y, x, 1, 1)

| k     | n       |
| se_k  | se_n    |
| r²    | st.dev. |
| F     | df      |
| SSdif | SSres   |


## Predstavitev podatka

# ANALIZA VIDEA

## ZAJEM VIDEOPOSNETKA
- Video na bo z enobarvnim ozadjem
- Enako osvetljenost
- Hitrost zaklopa naj bo velika (čas majhen)
- Kamera naj miruje - uporabite stojalo
- Gibanje predmeta naj bo pravokotna na optično os.

## ROČNO VZORČENJE CENTRA MASE

1. Naložimo video (Video -> Import)
    1. Spodaj nastavimo START in STOP ter
    2. na koliko skli videa bomo izbrali sličice (50)
2. Nastavimo merilo
    1. kliknemo na ikono [+-10-+] New -> Callibration stick
    2. nato s SHIFT_L_click določimo merilo
3. Določimo koordinatni sistem
    1. kliknemo ikono [ -|-+- ] in
    2. primemo središče koordinatnega sistema in ga namestimo
    3. koordinatni sistem lahko tudi nagnemo tako da uravnamo x_os
4. Vrnamo video na "point of interest" z ikono [  ] spodaj
5. in začnemo vzorčiti tako, da kliknemo:
    1. [ * ] Create -> Point mass
    2. in klikamo s SHIFT_L_click

## ANALIZA MERITEV

1. Na desni strani lahko izbiramo:
    1. Plot - koliko grafov želimo prikazovati
    2. če kliknemo na y-os lahko spremenimo x, y, v_x, a_x ...
    3. če kliknemo na belo polje grafa pa dobimo orodje za analizo:
        1. Analize -> ...
            1. Statistics : x, m, sd, se ...
            2. Curve fits (linearizacija)
            3. furjejeva transf. -> frekvence...
        2. V analizo lahko izberemo poljubne točke (označimo podatke v tabeli ali v grafu)

## AVTOMATIČNO VZORČENJE

1. Ponovi korake 1. - 4. iz ROČNO VZORČENJE
2. Nato kliknemo [*] Create -> Point mass
    1. vendar ne označino predmeta...
    2. klik na [mass A] -> Autotracker...
3. ...beri navodila : to create ... shift-control-click
    1. označimo predmet
        1. template: kaj bo iskal
        2. Match: kaj je našel
        3. išče v pikčaste kvadratu
        4. [o Search]
            1. lahko, da ne najde... glej Autotracker Issue?

### Autotracker
1. Vzorec (krog v katerem se nahajajo primerjalni pixli)
    1. ta krog lahko povečamo (vendar to opočasni obdelavo)
    2. ali premaknemo - bolje je iskati robove predmeta kot same ploskve
    3. vzorec se bo med videom nekoliko spremijal (druga osvetljitev, drugačen kot na kamero) ...  
        te spremembe lahko upoštevamo z EVOLUTION RATE, ki podaja koliko % novega vzorca naj dodamo k prejšnjemu.
2. Iskalno polje (pikčast kvadrat)
    1. autotracker bo preiskal iskalno polje in podal najboljše ujemanje
    2. če se objekt v naslednjem izbranem framu nahaja zunaj tega polja, ne bomo našli...
    3. za vsak frame se izračuna "mach score" in privzame rezultat z največjim tem rezultatom.
        mejo tega rezultata lahko nastavimo v parametru Automark
3. Tarča: naj bo v težišču

### Autotracker issue

Če Autotracker ne najde ustreznega rezultata, imamo nekaj moćnosti:

1. Potrdimo oredlagano rešitev
2. Povečamo iskalno polje
3. SHIFT_L_click in označimo ustrezno mesto
4. SHIFT_CONTROL_L_click in označimo nov vzorec
<!-- 
- za Thinkercad ni pravilnih  linkov do bašega projekta, link naj bo v stilu:
- https://www.tinkercad.com/things/jurjOWP4751-ardlcdp/editel?sharecode=lrPmEVxD_1P7KHpNwPwGfMgYuxhIGeg5EwdVifrFQP0

tisto vmes izbrišite... 
- fizikalne enote
-->

## OBLIKOVANJE FIZIKALNEGA MODELA (izračun x in y)

Pri nanlizi poševnega meta teniške žogice smo izmerili naslednje veličine:

- m: 58g
- v_x: 1.962 m/s
- v_y: 4.801 m/s
- g: 9.97 m/s²

1. [*] Create -> Kinematic model (in vpišemo podatke)

- v_x: 1.962 m/s
- v_y: 4.801 m/s

- x = v_x0*t + x_0
- y = ¹/₂ 9.81 m/s²*t² + v_y0*t + y_0

## OBLIKOVANJE DINAMIČNEGA FIZIKALNEGA MODELA (izračun sil)

- t: 0 s
- x: 0 m
- y; 0 m
- v_x: 1.962 m/s
- v_y: 4.801 m/s

- Fx = 0
- Fy = m*g

# ANALIZA ZVOKA
## Analiza periodičnih signalov
## Ton, Zven, Šum, ...
## Jakost in enota dB
## Sinus in FFT
## Pravokotni signal in FFT

$$ x(t)=\frac{4}{\pi}(\sin(\omega t)+\frac{1}{3}\sin(3\omega t)+\frac{1}{5}\sin(5\omega t)+ ...) $${#eq:pravokotni_signa}

Za vse meritve 

vmesni časi
preglednica
vsi v isto
lin reg

zamujajo  ali prehit


# Statistična obdelava podatkov s tabelaričnimi orodji

# Video analiza

# Semarska 
oddaja 
kaj bi bil cilj
s čim 
kaj bo racalo
- potrdim
- delate

naloga 
trakcem ali telefon

# Avtorska pola:
ávtorska pôla ž, enota osebnega avtorskega dela in podlaga za obračun honorarja, obsega 30.000 znakov (črk, številk, ločil, presledkov) ali približno 16 tipkanih strani. Ena tipkana stran je približno 1875, ena tipkana vrstica pa 62 do 63 znakov. Avtorska pola izhaja iz tiskovne pole, odtisnjene nerazrezane in nepreganjene pole papirja, ki predstavlja 8 listov ali 16 strani v knjigi.

To definicijo priznava tudi Avtorska agencija za Slovenijo, drugače pa je z Društvom znanstvenih in tehniških prevajalcev Slovenije, ki izhaja iz »obračunske strani čistopisa izvirnika«; ta ima samo 1500 znakov, a brez presledkov.

# Analiza zvoka



# Literatura
