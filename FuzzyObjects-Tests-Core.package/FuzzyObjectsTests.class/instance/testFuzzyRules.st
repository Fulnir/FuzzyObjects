running
testFuzzyRules
	|  ventilSteuerungTest |
	
	"Erzeugen eines Fuzzy-Interface."

    ventilSteuerungTest := FuzzyInterface new.

    ventilSteuerungTest
        surfaceSize: 101;        "Genauigkeit der Defuzzyfizierung."
        newLingVar: ventil;
        newLingVar: druck;
        newLingVar: temperatur.

	self assert: ventilSteuerungTest surfaceSize = 101.
	self assert: (ventilSteuerungTest lingvar:  'ventil' )varName = 'ventil'.
	
 	ventilSteuerungTest
        newRule: (Array with: 'minimum' with: (Array with: warm with: mittel ) with: halb);
        newRule: (Array with: 'maximum' with: (Array with: heiss with: hoch) with:  zu); 
        newRule: (Array with: 'maximum' with: (Array with: kalt with: niedrig) with: auf).


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
        initOutput: 'ventil'.

    ventilSteuerungTest
        input: 'temperatur'   set: -90;
        input: 'druck'        set: 120.


    
	self assert: (ventilSteuerungTest  readOutput: 'ventil') = 62.

    " VentilSteuerung ausgangalle.           -defuzzyfizierung für alle ausgänge."

	"ventilSteuerungTest := FuzzyInterface new."
"FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: ventilSteuerungTest.
FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: ventilSteuerungTest with: 'Ventil'."