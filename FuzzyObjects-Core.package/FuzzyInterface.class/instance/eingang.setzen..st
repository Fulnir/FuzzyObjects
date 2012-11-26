as yet unclassified
eingang: aString setzen: aNumber
    "Trägt den Wert einer Linguistischen Variable in die Meßwertliste
    eingang ein. aString sollte dem varname entsprechen."

    |lingvar|

    eingang isNil
        ifTrue: [eingang := Dictionary new].

    lingvar := lingvarliste at: aString.             "Das Object zum Namen in aString wird ermittelt."
    lingvar setliste do: [:set | set eingangswert: aNumber]."Der Eingangsw. wird in das Set geschrieben."
    eingang at: aString put: aNumber