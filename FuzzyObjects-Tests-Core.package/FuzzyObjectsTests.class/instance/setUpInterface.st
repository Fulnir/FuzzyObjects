running
setUpInterface	
	"Erzeugen eines Fuzzy-Interface."
    ventilSteuerung := FuzzyInterface new.
    ventilSteuerung
        flaechengroesse: 101;        "Genauigkeit der Defuzzyfizierung."
        neueLingVar: ventil;
        neueLingVar: druck;
        neueLingVar: temperatur.
 	ventilSteuerung
        neueRegel: (Array with: 'minimum' with: (Array with: warm with: mittel ) with: halb);
        neueRegel: (Array with: 'maximum' with: (Array with: heiss with: hoch) with:  zu); 
        neueRegel: (Array with: 'maximum' with: (Array with: kalt with: niedrig) with: auf).


    ventilSteuerung ausgangInit: 'ventil'.

    ventilSteuerung
        eingang: 'temperatur'   setzen: -90;
        eingang: 'druck'        setzen: 120.
