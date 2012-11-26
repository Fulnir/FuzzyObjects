running
testFuzzyRules
	|  ventilSteuerungTest |
	
	"Erzeugen eines Fuzzy-Interface."

    ventilSteuerungTest := FuzzyInterface new.

    ventilSteuerungTest
        flaechengroesse: 101;        "Genauigkeit der Defuzzyfizierung."
        neueLingVar: ventil;
        neueLingVar: druck;
        neueLingVar: temperatur.

	self assert: ventilSteuerungTest flaechengroesse = 101.
	self assert: (ventilSteuerungTest lingvar:  'ventil' )varname = 'ventil'.
	
 	ventilSteuerungTest
        neueRegel: (Array with: 'minimum' with: (Array with: warm with: mittel ) with: halb);
        neueRegel: (Array with: 'maximum' with: (Array with: heiss with: hoch) with:  zu); 
        neueRegel: (Array with: 'maximum' with: (Array with: kalt with: niedrig) with: auf).


    "Zuerst die Regeln der ersten Schicht. Danach in der entsprechenden
    Reihenfolge die anderen Schichten. Regeln deren Ergebnis nicht als
    Ausgang gewertet werden, sondern Zwischenergebnisse sind, werden mit
    operatorZ aufgerufen. z.B. minimumZ. In der Schlußfolgerung steht
    dann eine Zwischenvariable. (z.B. Z1 )."
    "neueRegel: (List with: 'maximum' with: (List with: heiss with: hoch) with:  Z1); "
    
    "Bei einem Gamma-Operator kommt als vierter Wert im Array der Wert von 
    Gamma hinzu."
    "neueRegel: (List with: 'gamma' with: (List with: heiss with: hoch) with:  zu with: 0.5); "

    ventilSteuerungTest
        ausgangInit: 'ventil'.

    ventilSteuerungTest
        eingang: 'temperatur'   setzen: -90;
        eingang: 'druck'        setzen: 120.


    ventilSteuerungTest
        ausgangLesen: 'ventil'.


    " VentilSteuerung
        ausgangalle.           -defuzzyfizierung für alle ausgänge."

	ventilSteuerungTest := FuzzyInterface new.
"FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: ventilSteuerungTest.
FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: ventilSteuerungTest with: 'Ventil'."