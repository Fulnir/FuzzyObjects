as yet unclassified
input: aString set: aNumber
    "Trägt den Wert einer Linguistischen Variable in die Meßwertliste
    eingang ein. aString sollte dem varname entsprechen."

    |lingvar|

    input isNil
        ifTrue: [input := Dictionary new].

    lingvar := lingVarList at: aString.             "Das Object zum Namen in aString wird ermittelt."
    lingvar setList do: [:set | set inputValue: aNumber]."Der Eingangsw. wird in das Set geschrieben."
    input at: aString put: aNumber