as yet unclassified
surfacePart: aObject product: aNumber
    "Trägt eine teilfläche in die gesamtflaeche zur Schwerpunktbestimmung ein."

    | neueflaeche flaechengroesse flaeche xUmrechnung bereich productdegree myLingVar|


    neueflaeche := OrderedCollection new.
    SurfaceSize timesRepeat: [neueflaeche add: 0].

    myLingVar := self varObjectToSet: aObject.
    myLingVar deFuzzySurface isNil
        ifTrue: [ myLingVar deFuzzySurface: neueflaeche].

    "Umrechnung Wertebereich auf Flaechengroesse."


    bereich := (-1 * aObject xmin  ) + aObject xmax abs.

    1 to: SurfaceSize do: [:lauf |
productdegree := aNumber * (aObject degree: (((lauf - 1) * bereich / (SurfaceSize - 1)) + aObject xmin) ).
                                productdegree > (myLingVar deFuzzySurface at: lauf)
                                    ifTrue: [myLingVar deFuzzySurface at: lauf put: productdegree].
                                 ]