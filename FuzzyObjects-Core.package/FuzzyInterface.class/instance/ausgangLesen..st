as yet unclassified
ausgangLesen: aString
    "Defuzzyfizierung durchführen für Ausgangsvariable. (Nur eine. bei allen
    siehe ausgangalle: . "
    | operator |

    "-----Alle Regeln abarbeiten."
    "Regelsyntax:('operator'(Eingang_1 ... Eingang_n) Ziel_der_Schlußfolgerung )"
    "   z.B.: ('und'(heiss hoch) zu)    "
    " -> WENN Temperatur heiss und Druck hoch DANN Ventil zu.   "
    " Für jede Regel wird eine Teilfläche der Grsamtfläche hinzugefügt."

    regeln do: [:myregel |
        operator := myregel at: 1.
        operator = 'minimum'
            ifTrue: [self und: (myregel at: 2) dann: (myregel at: 3) ].
        operator = 'minimumZ'
            ifTrue: [self und: (myregel at: 2) dannZ: (myregel at: 3) ].
        operator = 'maximum'
            ifTrue: [self oder: (myregel at: 2) dann: (myregel at: 3) ].
        operator = 'maximumZ'
            ifTrue: [self oder: (myregel at: 2) dannZ: (myregel at: 3) ].
    ].

    "-----deFuzzysifizierung"
    "   Für jeden Eintrag in der Liste ausgang wird der Schwerpunkt der Fläche
    berechnet. "

    ausgang keysDo: [:myausgang | ausgang at: myausgang put: (self deFuzzy: myausgang)].

    "Ausgeben des Wertes dessen Namen angegeben wurde."

    ^ausgang at: aString.