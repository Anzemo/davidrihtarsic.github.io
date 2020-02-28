# Uporaba tipke

> OPOZORILO: Vaja še ni dokončana, dodati moram še sheme vezij... To bom dokončal v soboto... če jo boste že natisnili, boste morali vezja dorisati na samih vajah... Hvala za razumevanje.

Tipka je element, ki je podoben stikalu. Prav tako kot pri stikalu, ob pritisku povežemo dva priključka med sabo, razlika pa je v tem, da se pri tipki ta povezava razklene ob prenehanju pritiska nanjo.

> VAJA: VEZAVA TIPKE V DELILNIK NAPETOSTI  
> Sestavite vezje s tipko, kot ga prikazuje naslednja slika. Tipka naj bo vezana v delilnik napetosti in naj bo priključena proti napajanju.  
> V tabelo vpišite napetosti na obeh elementih. Najprej poskušajte predviditi kolikšna je napetost na element, natp ša to preverite z inštrumentom.

|   Situacija  | Element | $U_{?}$ [V] | $U_{izm}$ [V] |
|:------------:|:-------:|-------------|---------------|
| Razkljenjeno |         |             |               |
|              |  Tipka  |             |               |
|              |   Upor  |             |               |
|   Slenjeno   |         |             |               |
|              |  Tipka  |             |               |
|              |   Upor  |             |               |



## Priključitev tipke na digitalni vhod

Nato srednji priključek delilnika napetosti povežite na digitalni vhod krmilnika Arduino nano na priključek D10, kot prikazuje spodnja slika.

> VAJA: PRIKLJUČITEV TIPKE NA DIGITALNI VHOD  
> Priključite tipko po shemi in preskusite spodnji program.  
> Nato popravite program tako, bo LED svetila, ko boste tipko pritisnili.

```cpp
void setup() {
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(10, INPUT);
}

void loop() {
  if (digitalRead(10) == LOW){
    digitalWrite(0, HIGH);
  }else{
    digitalWrite(0, LOW);
  }
}
```

## Priključitev tipke z uporom proti napajanju

Zamenjajte elementa v delilniku napetosti tako, da bo upor vezan proti napajanju in tipka proti napetostnem potencialu 0 V.

> VAJA: UPOR VEZAN PROTI NAPAJANJU  
> Vezje spremenite, kot je predstavljeno v shemi in ugotovite kaj se v vezju spremeni.  
> Popravite program tako, da bo LED utripala, ko boste tipko držali.
> Utemeljite zakaj je sedaj napetostni potencial na vhodnem priključku krmilnika D10 enak 5 V, ko tipka ni pritisnjena (Utemeljitev podprite z Ohm-ovim zakonom in Kirchoff-ovima izrekoma).

## Uporaba uporov vezanih proti napajanju v mikrokrmilniku

Uporaba vezave uporov proti napajanju je zelo pogosta. Zato le to mikrokrmilniki že vsebujejo v samem integriranem vezju na vseh digitalnih vhodih.

> VAJA: UPORABA UPOROV VEZANIH PROTI NAPAJANJU V MIKROKRMILNIKU  
> Odstranite upor iz vezja kakor veleva shema in  
> programsko vključite upor vezan proti napajanju na digitalnem vhodu D10.


