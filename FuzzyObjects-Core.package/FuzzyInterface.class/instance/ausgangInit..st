as yet unclassified
ausgangInit: aString
    "Ausgang in Liste eintragen. Nur die in dieser liste stehenden Variablen
    werden defuzzyfiziert."

    ausgang isNil
        ifTrue: [ausgang := Dictionary new].

    ausgang at: aString put: nil