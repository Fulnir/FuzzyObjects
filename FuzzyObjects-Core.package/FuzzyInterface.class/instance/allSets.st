as yet unclassified
allSets
	|aset asetliste avar|
	avar := lingVarList at: 'druck'.
    	asetliste := avar setList.
    	asetliste keysDo: [:anset | aset := avar fuzzySetNamed: anset.
                                aset display]