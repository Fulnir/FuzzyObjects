running
testLinguisticVar
	| pressureTest |
	self assert: FuzzyLinguisticVariable new class = FuzzyLinguisticVariable.
	pressureTest := FuzzyLinguisticVariable new.
	pressureTest varName: 'pressure';
		 xmin: -500;
		 xmax: 500;
		 newFuzzySet: niedrig;
		 newFuzzySet: mittel;
		 newFuzzySet: hoch