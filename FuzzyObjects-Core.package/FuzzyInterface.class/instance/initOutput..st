initialize-release
initOutput: aString
    "Ausgang in Liste eintragen. Nur die in dieser liste stehenden Variablen
    werden defuzzyfiziert."

    output isNil
        ifTrue: [output := Dictionary new].

    output at: aString put: nil