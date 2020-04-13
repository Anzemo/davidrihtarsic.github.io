
# Nelinearni upori in senzorji

> ### NALOGA: FOTOUPOR  
> Sestavite vezje, ki ga prikazuje [@fig:05-LDR-NTC.png] - levo. Nato spreminjajte osvetljenost elementa in opazujte kako se spreminja električni tok skozi element. Ugotovitev tudi napišite.
>
> Nato na podlagi teh ugotovitev utemeljite kako se spreminja upornost elementa glede na njegovo osvetljenost.

> ### NALOGA: TERMISTOR  
> Sestavite vezje, ki ga prikazuje [@fig:05-LDR-NTC.png] - desno. Nato spreminjajte temperaturo elementa in opazujte kako se spreminja električni tok skozi element. Ugotovitev tudi napišite.
>
> Nato na podlagi teh ugotovitev utemeljite kako se spreminja upornost elementa glede na njegovo temperaturo.

## Umeritev senzorja

> ### NALOGA: UMERITEV SENZORJA TEMPERATURE  
> Sestavite senzor temperature, kot je predstavljen na [@fig:05-Temp-sen.png]. Spreminjajte temperaturo termistorja in beležite izhodno napetost. Meritve uredite tudi v tabeli. Nato iz dobljenih meritev lahko narišete graf $U_{izh}(T)$.
>
> Za tem iz dobljenih meritev izračunajte še upornost $R_{NTC}$ za vsako izmerjeno situacijo in narišite graf $R_{NTC}(T)$.

# Kondenzator v izmeničnih tokokrogih

> ### NALOGA: NAPETOSTI V IZMENIČNIH TOKOKROGIH  
> Sestavite vezje na [@fig:06-AC-R-C.png] in z V-metrom izmerite napetosti na elementih in jih vpišite v tabelo. V shemo vključite tudi priključitev vseh treh V-metrov.

> ### NALOGA: PREVERITE 2. KIRCHHOFFOV IZREK  
> Kaj lahko ugotovite glede 2. Kirchhoffovega izreka. Ugotovitve zapišite.

> ### NALOGA: ČASOVNI POTEK NAPETOSTI (osciloskop)  
> V vezje priključite osciloskop, kot kaže [@fig:06-OSC.png].  
> Nato pravilno nastavite osciloskop (na ekranu naj bo vidna le ena perioda) in odčitajte ter prerišite vse tri poteke napetosti:  
> 1. Časovni potek napetostnega potenciala, ki ga generira vir napetosti (A).  
> 2. Časovni potek napetosti na kondenzatorju (B).  
> 3. Napetost na uporu, ki jo lahko prikažemo z matematično funkcijo A-B.  

> ### NALOGA: ČASOVNI POTEK NAPETOSTI (simulacija)  
> Na isti graf U(t) prikazujte:  
> 1. Časovni potek napetosti vira,  
> 2. časovni potek napetosti na kondenzatorju in  
> 3. časovni potek napetosti na uporu.  
> Na graf lahko dodate več krivulj tako, da:  
> označite graf -> desni klik -> Properties... -> Traces -> []Show trace X  
> Graf naj bo velik, pregleden in na njem naj bo le ena perioda.

> ### NALOGA: KARAKTERISTIČNE VREDNOSTI IZMENIČNE NAPATOSTI  
> Iz predhodno izmerjenega grafa odčitajte naslednje količine in jih vpišite v tabelo. Kjer je:  
> - $\hat{U}$ - amplitudna napetost - največji odmik krivulje od srednje vrednosti in  
> - $t_{\hat{U}}$ - čas, pri katerem se pojavi amplitudna napetost.  
> - $\varphi$ - fazni premik med napetostmi, pri čemer smo za orientacijo vzeli napetost na uporu.[^1]  
> - $U_{t=konst.}$ - napetost na elementu ob istem trenutku za vse tri krivulje. Na primer napetost na elementu pri času $t=15ms$.

## Fazni zamik količin v izmeničnih tokokrogih

> ### NALOGA: KAZALČNI DIAGRAM  
> Najprej preverite 2. Kirchhoffov izrek, vendar vzemite meritve vseh treh napetosti ob istem času iz [@tbl:u-t-AC ]. Kaj ugotovite? Ugotovitev utemeljite v navezavi z meritvami iz [@tbl:u-efektivna ].  
> V kazalčni diagram vrišite vse tri vektorje amplitudnih napetosti ($\vec{U_{V_1}}, \vec{U_{R_1}} in\ \vec{U_{C_1}}$) in preverite veljavnost 2. Kirchhoffovega izreka še v tej vektorski obliki. Ugotovitev zapišite.

## Tok v izmeničnih tokokrogih s kapacitivnim bremenom

> ### NALOGA: TOK V IZMENIČNEM KROGU S KAPACITIVNIM BREMENOM  
> Iz časovne odvisnosti U_R(t) iz prejšnje naloge izračunajte tok skozi vezje (vsako točko napetosti delite z upornostjo upora) in tok vrišite v graf na [@fig:07chart-oscilloscope.png].  
> V graf na [@fig:chart-oscilloscope.png] vrišite (prerišite) tudi napetost na kondenzatorju.

> ### NALOGA: IMPEDANCA KONDENZATORJA  
> Izračunajte impedanco kondenzatorju in nato še njegovo kapacitivnost. Izračune dosledno nakažite.

> ### NALOGA: FAZNI ZAMIK MED TOKOM IN NAPETOSTJO  
> Iz grafa na [@fig:07chart-oscilloscope.png] odčitajte časovno razliko $\Delta t$ med amplitudo toka in amplitudo napetosti na kondenzatorju in izračunajte fazni zamik $\varphi$.  
> Narišite kazalčni diagram z vektorjema amplitude toka in napetosti.

# TOK IN NAPETOST V IZMENIČNIH TOKOKROGIH Z INDUKTIVNIM BREMENOM

> ### NALOGA: NAPETOST V IZMENIČNEM TOKOKROGU Z INDUKTIVNIM BREMENOM  
> Sestavite vezje na [@fig:08-I-U-AC-tuljava.png]-desno in v graf na [@fig:Ut_Ur_Uv_time] vrišite potek napetosti gonilnega vira ($U_G(t) \rightarrow CH_A$), napetost ($U_{R_1}(t) \rightarrow CH_B$) in razliko teh dveh napetosti, ki nam poda napetost na tuljavi ($U_T(t) \rightarrow CH_A - CH_B$ ) na tuljavi. 

> ### NALOGA: TOK V IZMENIČNEM TOKOKROGU Z INDUKTIVNIM BREMENOM  
> Na grafu [@fig:Ut_Ur_Uv_time] označite katera od krivulj lahko predstavlja tudi tok, ki teče skozi to vezje ($I(t)$) in na desno stran grafa dorišite novo skalo za tok, ki jo prilagodite tej krivulji.

## NAVIDEZNA, DELOVNA IN JALOVA MOČ

> ### NALOGA: NAVIDEZNA MOČ  
> Za tokokrog na [@fig:08-I-U-AC-tuljava.png] izmerite efektivne vrednosti toka in napetosti za vsak element v vezju. Vrednosti izmerite z Volt- in Ampere-metrom z nastavitvijo za izmenične vrednosti (RMS). Izpolnite [@tbl:U_I_efektivni] za $\widetilde{U_{ef}}$, $\widetilde{I_{ef}}$ in $P_n[mW]$.

> ### NALOGA: DELOVNA MOČ  
> Iz [@fig:Ut_Ur_Uv_time] odčitajte tudi časovne razlike med zamiki napetosti in tokom za vsak element in meritev vpišite v [@tbl:U_I_efektivni]. Glede na ta podatek, izračunajte tudi fazni zamik $\Delta \varphi$ in po [@eq:delovna_moc] izračunajte tudi $P_d$.

## JALOVA MOČ

> ### NALOGA: JALOVA MOČ
> Izračunajte kolikšno jalovo moč lahko pričakujemo na posameznih elementih iz [@fig:08-I-U-AC-tuljava.png] in jo vpišite v [@tbl:U_I_efektivni].

> ### NALOGA: KOMPENZACIJA JALOVE MOČI
> Izračunajte primeren kondenzator $C_K$ za kompenzacijo jalove moči v vašem vezju.  
> Še naprej z osciloskopom opazujte električne napetosti v tokokrogu na [@fig:08-I-U-AC-tuljava.png] in hkrati merite tok skozi vir napetosti.  
> Nato vzporedno k viru vežite kondenzator za kompenzacijo jalove moči $C_K$ in opazujte:  
> - Ali se je tok skozi vir spremenil, ča da, kako?  
> - Ali so se razmere v tokokrogu $U_G - L_1 - R_1$ kaj spremenile, če da, kako?
