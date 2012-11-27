solving
deFuzzy: aString
    "startet die Defuzzyfizierung."

    | myLingVar ganzeFlaeche halbeFlaeche suchhalbeFlaeche mylauf bereich|

    myLingVar := self var: aString.

    ganzeFlaeche := 0.
    suchhalbeFlaeche := 0.
    mylauf := 0.

    1 to: SurfaceSize do: [:lauf | ganzeFlaeche := ganzeFlaeche +  (myLingVar deFuzzySurface at: lauf)].

    halbeFlaeche := ganzeFlaeche / 2.

    "-----Index des Schwerpunktes im Flächenarray ermitteln."

    [suchhalbeFlaeche <= halbeFlaeche]
        whileTrue: [mylauf := mylauf +1.
                    suchhalbeFlaeche := suchhalbeFlaeche +  (myLingVar deFuzzySurface at: mylauf).
        ].
    "Fläche löschen."
    1 to: SurfaceSize do: [:lauf | myLingVar deFuzzySurface at: lauf put: 0].

    "-----Aus Index Ausgangswert berechnen und ausgeben."

    bereich := (-1 * myLingVar xmin  ) + myLingVar xmax abs.
    ^((mylauf - 1) * bereich / (SurfaceSize - 1)) + myLingVar xmin