running
testLinguisticVar
	| pressureTest |
	self assert: FuzzyLinguisticVariable new class = FuzzyLinguisticVariable.
	pressureTest := FuzzyLinguisticVariable new.
	pressureTest varname: 'pressure';
		 xmin: -500;
		 xmax: 500;
		 neuesSet: niedrig;
		 neuesSet: mittel;
		 neuesSet: hoch