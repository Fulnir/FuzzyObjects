as yet unclassified
teilFlaeche: aObject product: aNumber
    "Trägt eine teilfläche in die gesamtflaeche zur Schwerpunktbestimmung ein."

    | neueflaeche flaechengroesse flaeche xUmrechnung bereich productdegree myLingVar|


    neueflaeche := OrderedCollection new.
    Flaechengroesse timesRepeat: [neueflaeche add: 0].

    myLingVar := self varObjectZuSet: aObject.
    myLingVar deFuzzyFlaeche isNil
        ifTrue: [ myLingVar deFuzzyFlaeche: neueflaeche].

    "Umrechnung Wertebereich auf Flaechengroesse."


    bereich := (-1 * aObject xmin  ) + aObject xmax abs.

    1 to: Flaechengroesse do: [:lauf |
productdegree := aNumber * (aObject degree: (((lauf - 1) * bereich / (Flaechengroesse - 1)) + aObject xmin) ).
                                productdegree > (myLingVar deFuzzyFlaeche at: lauf)
                                    ifTrue: [myLingVar deFuzzyFlaeche at: lauf put: productdegree].
                                 ]