accessing
newZVar: aString
    "Erzeugt eine neue Zwischenvariable bei der kaskadierung von Regeln."

    | avarname avar|

    zVarList isNil
        ifTrue: [zVarList := Dictionary new].


    avar        := 0.
    avarname    := aString.

    zVarList at: avarname put: avar.