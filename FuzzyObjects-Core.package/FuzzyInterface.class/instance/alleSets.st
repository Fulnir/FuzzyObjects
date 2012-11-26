as yet unclassified
alleSets
    "testphase !!!!!!!!!!!!"
    |aset asetliste avar|

    avar := lingvarliste at: 'druck'.
    asetliste := avar setliste.
    asetliste keysDo: [:anset | aset := avar set: anset.
                                aset display]