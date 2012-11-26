running
testFuzzyInterface
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
	