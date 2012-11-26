as yet unclassified
deFuzzy: aString
    "startet die Defuzzyfizierung."

    | myLingVar ganzeFlaeche halbeFlaeche suchhalbeFlaeche mylauf bereich|

    myLingVar := self var: aString.

    ganzeFlaeche := 0.
    suchhalbeFlaeche := 0.
    mylauf := 0.

    1 to: Flaechengroesse do: [:lauf | ganzeFlaeche := ganzeFlaeche +  (myLingVar deFuzzyFlaeche at: lauf)].

    halbeFlaeche := ganzeFlaeche / 2.

    "-----Index des Schwerpunktes im Flächenarray ermitteln."

    [suchhalbeFlaeche <= halbeFlaeche]
        whileTrue: [mylauf := mylauf +1.
                    suchhalbeFlaeche := suchhalbeFlaeche +  (myLingVar deFuzzyFlaeche at: mylauf).
        ].
    "Fläche löschen."
    1 to: Flaechengroesse do: [:lauf | myLingVar deFuzzyFlaeche at: lauf put: 0].

    "-----Aus Index Ausgangswert berechnen und ausgeben."

    bereich := (-1 * myLingVar xmin  ) + myLingVar xmax abs.
    ^((mylauf - 1) * bereich / (Flaechengroesse - 1)) + myLingVar xmin