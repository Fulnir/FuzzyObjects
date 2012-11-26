as yet unclassified
degree: anumber
    "Berechnet die Zugehörigkeit eines Wertes zur unscharfen Menge.
    ----
    Um den Grad der Zugehörigkeit eines Wertes zu einer unscharfen Menge
    zuberechnen, wird der Instance von FuzzySet die Nachricht degree: Wert
    gesendet.
    Zunächst wird der Wert so umgerechnet, daß er am Anfang der rechten
    oder linken Funktion zu Null wird. Dieser umgerechnete Wert wird jeweils
    in myLnumber und myRnumber gespeichert."

    | func myLnumber myRnumber|

    myLnumber := (anumber - (linkemitte - breitelinks)).
    myRnumber := (anumber - (rechtemitte )).

    "Zuerst wird eine Fallunterscheidung durchgeführt.
    1.Frage: Reicht die maximale Zugehörigkeit bis +Unendlich ?
        Nein->dann
                2.Frage:Reicht die maximale Zugehörigkeit bis +Unendlich ?
                    Ja-> dann
                            weitere falluntersch. von linkemitte bis xmax.
                    Nein->dann
                            weitere falluntersch. für ganzen Bereich.
        ja->dann
                weitere falluntersch. bis rechtemitte."

  rechtemitte = xmax ifFalse: [
    linkemitte = xmin
        ifTrue: [anumber <= rechtemitte
                    ifTrue: [^ymax].
                (anumber > rechtemitte)&(anumber <= (rechtemitte + breiterechts))
                    ifTrue: [deltaY := deltaRY.
                            func := rechtefunktion value: myRnumber.
                            func := func .
                            ^func].
                anumber > (rechtemitte + breiterechts)
                    ifTrue: [^ymin].
                ]
        ifFalse: [anumber <= (linkemitte - breitelinks)
                    ifTrue: [^ymin].
                (anumber > (linkemitte - breitelinks))&(anumber <= linkemitte)
                    ifTrue: [deltaY := deltaLY.
                            func := linkefunktion value: myLnumber.
                            func := func.
                            ^func].
                (anumber > linkemitte)&(anumber <= rechtemitte)
                    ifTrue: [^ymax].
                (anumber > rechtemitte)&(anumber <= (rechtemitte + breiterechts))
                    ifTrue: [deltaY := deltaRY.
                            func := rechtefunktion value: myRnumber.
                            func := func.
                            ^func].
                anumber > (rechtemitte + breiterechts)
                    ifTrue: [^ymin].
                ]]
    ifTrue: [anumber <= (linkemitte - breitelinks)
                    ifTrue: [^ymin].
                (anumber > (linkemitte - breitelinks))&(anumber <= linkemitte)
                    ifTrue: [deltaY := deltaLY.
                            func := linkefunktion value: myLnumber.
                            func := func.
                            ^func].
                (anumber > linkemitte)&(anumber <= rechtemitte)
                    ifTrue: [^ymax]
            ].
    ^1