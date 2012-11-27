running
testFuzzyInterface
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
	