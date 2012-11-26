as yet unclassified
deFuzzyDelete: aString
    "Löscht die Defuzzyfizierungfläche."

    | myLingVar|

    myLingVar := self var: aString.

    1 to: Flaechengroesse do: [:lauf | myLingVar deFuzzyFlaeche at: lauf put: 0]