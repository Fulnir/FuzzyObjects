as yet unclassified
deFuzzyDelete: aString
    "Löscht die Defuzzyfizierungfläche."

    | myLingVar|

    myLingVar := self var: aString.

    1 to: SurfaceSize do: [:lauf | myLingVar deFuzzySurface at: lauf put: 0]