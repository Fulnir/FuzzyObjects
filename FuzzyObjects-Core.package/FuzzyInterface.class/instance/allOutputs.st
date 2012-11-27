as yet unclassified
allOutputs
    "Defuzzyfizierung durchführen für Ausgangsvariable. (Nur eine. bei allen
    siehe ausgangalle . "
    | operator |

    "-----Alle Regeln abarbeiten."
    "Regelsyntax:('operator'(Eingang_1 ... Eingang_n) Ziel_der_Schlußfolgerung )"
    "   z.B.: ('und'(heiss hoch) zu)    "
    " -> WENN Temperatur heiss und Druck hoch DANN Ventil zu.   "
    " Für jede Regel wird eine Teilfläche der Grsamtfläche hinzugefügt."

    rules do: [:myregel |
        operator := myregel at: 1.
        operator = 'minimum'
            ifTrue: [self and: (myregel at: 2) then: (myregel at: 3) ].
        operator = 'minimumZ'
            ifTrue: [self and: (myregel at: 2) thenZ: (myregel at: 3) ].
        operator = 'maximum'
            ifTrue: [self or: (myregel at: 2) then: (myregel at: 3) ].
       operator = 'maximumZ'
            ifTrue: [self or: (myregel at: 2) thenZ: (myregel at: 3) ].
    ].

    "-----deFuzzysifizierung"
    "   Für jeden Eintrag in der Liste ausgang wird der Schwerpunkt der Fläche
    berechnet. "

    output keysDo: [:myausgang | output at: myausgang put: (self deFuzzy: myausgang)].

    "Ausgeben des Wertes dessen Namen angegeben wurde."

    ^output keysDo: [:myausgang | output at: myausgang].