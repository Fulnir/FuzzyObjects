accessing
neueZVar: aString
    "Erzeugt eine neue Zwischenvariable bei der kaskadierung von Regeln."

    | avarname avar|

    zVarListe isNil
        ifTrue: [zVarListe := Dictionary new].


    avar        := 0.
    avarname    := aString.

    zVarListe at: avarname put: avar.