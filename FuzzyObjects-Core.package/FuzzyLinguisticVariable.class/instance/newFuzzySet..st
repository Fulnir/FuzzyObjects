as yet unclassified
newFuzzySet: aObject
    "Erzeugt ein neues FuzzySet und legt es in der setliste ab."

    | asetname aset|

    setList isNil                              "Ist Setliste vorhanden? Wenn nein  "
        ifTrue: [setList := Dictionary new].   "dann erzeugen.                     "


    aset        := aObject.                     "Die Fuzzyset-Instance in aset.     "
    asetname    := aset setname.                "Den Setnamen abrufen und in        "
                                                "asetname eintragen.                "
    setList at: asetname put: aset.            "DieFuzzyset-Instance wird unter    "
                                                "ihrem Namen im Dictionary setliste "
                                                "eingetragen.                       "