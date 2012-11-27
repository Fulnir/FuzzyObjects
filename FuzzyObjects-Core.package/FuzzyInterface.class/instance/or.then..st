as yet unclassified
or: aArray then: aObject
    "Oder-Operator. Ergebnis in Gesamtfläche eintragen."
    | einer alle ergebnis top z|

    "aArray enthält alle Sets die durch den oder-Operator verknüpft werden.
    do: bewirkt, daß mit jedem Set als Parameter der Block ausgeführt wird."


    aArray do: [:aFuzzySet | einer := aFuzzySet degree: ( input at: (self varToSet: aFuzzySet)).
                    alle isNil
                        ifTrue: [alle := Set with: einer]
                        ifFalse: [alle add: einer]
                    ].

    alle do: [:element | top isNil
                                ifTrue: [top := element]
                                ifFalse: [top > element
                                            ifFalse: [top := element].
                                ].
                ].

    ergebnis := top.

    self surfacePart: aObject product: ergebnis