as yet unclassified
setUpLingVars
	"setUpLingVars"
	ventil := FuzzyLinguisticVariable new.
	ventil varName: 'ventil';
		 xmin: -100;
		 xmax: 100;
		 newFuzzySet: auf;
		 newFuzzySet: halb;
		 newFuzzySet: zu.
	druck := FuzzyLinguisticVariable new.
	druck varName: 'druck';
		 xmin: -500;
		 xmax: 500;
		 newFuzzySet: niedrig;
		 newFuzzySet: mittel;
		 newFuzzySet: hoch.
	temperatur := FuzzyLinguisticVariable new.
	temperatur varName: 'temperatur';
		 xmin: -90;
		 xmax: 90;
		 newFuzzySet: kalt;
		 newFuzzySet: warm;
		 newFuzzySet: heiss