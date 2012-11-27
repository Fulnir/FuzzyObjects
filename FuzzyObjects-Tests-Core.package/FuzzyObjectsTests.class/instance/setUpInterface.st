running
setUpInterface	
	"Erzeugen eines Fuzzy-Interface."
    ventilSteuerung := FuzzyInterface new.
    ventilSteuerung
        surfaceSize: 101;        "Genauigkeit der Defuzzyfizierung."
        newLingVar: ventil;
        newLingVar: druck;
        newLingVar: temperatur.
 	ventilSteuerung
        newRule: (Array with: 'minimum' with: (Array with: warm with: mittel ) with: halb);
        newRule: (Array with: 'maximum' with: (Array with: heiss with: hoch) with:  zu); 
        newRule: (Array with: 'maximum' with: (Array with: kalt with: niedrig) with: auf).


    ventilSteuerung initOutput: 'ventil'.

    ventilSteuerung
        input: 'temperatur'   set: -90;
        input: 'druck'        set: 120.
