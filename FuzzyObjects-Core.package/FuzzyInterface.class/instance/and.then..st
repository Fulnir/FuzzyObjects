as yet unclassified
and: aArray then: aObject
    "Und-Operator. Ergebnis in Gesamtfläche eintragen."
    | einer alle ergebnis top|


    "aArray enthält alle Sets die durch den Und-Operator verknüpft werden.
    do: bewirkt, daß mit jedem Set als Parameter der Block ausgeführt wird."

                                                                              "setname"
    aArray do: [:aFuzzySet | einer := aFuzzySet degree: ( input at:  (self varToSet: aFuzzySet)).
                    alle isNil
                        ifTrue: [alle := Set with: einer]
                        ifFalse: [alle add: einer]
                    ].
    "In dem Array alle stehen Zugehörigkeitswerte aller Sets die verknüpft werden."

    "Und-Verknüpfung. --minimum-- "

    alle do: [:element | top isNil
                                ifTrue: [top := element]
                                ifFalse: [top < element
                                            ifFalse: [top := element].
                                ].
                ].

    ergebnis := top.

    self surfacePart: aObject product: ergebnis