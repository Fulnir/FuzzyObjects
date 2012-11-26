as yet unclassified
setUpLingVars
	"setUpLingVars"
	ventil := FuzzyLinguisticVariable new.
	ventil varname: 'ventil';
		 xmin: -100;
		 xmax: 100;
		 neuesSet: auf;
		 neuesSet: halb;
		 neuesSet: zu.
	druck := FuzzyLinguisticVariable new.
	druck varname: 'druck';
		 xmin: -500;
		 xmax: 500;
		 neuesSet: niedrig;
		 neuesSet: mittel;
		 neuesSet: hoch.
	temperatur := FuzzyLinguisticVariable new.
	temperatur varname: 'temperatur';
		 xmin: -90;
		 xmax: 90;
		 neuesSet: kalt;
		 neuesSet: warm;
		 neuesSet: heiss