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

## Zajem videoposnetka
- ozadje
- kamera miruje

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

# Analiza zvoka



# Literatura
