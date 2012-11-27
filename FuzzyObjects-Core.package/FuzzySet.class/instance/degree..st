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

    myLnumber := (anumber - (leftMiddel - breitelinks)).
    myRnumber := (anumber - rightMiddel).

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

  rightMiddel = xmax ifFalse: [
    leftMiddel = xmin
        ifTrue: [anumber <= rightMiddel
                    ifTrue: [^ymax].
                (anumber > rightMiddel)&(anumber <= (rightMiddel + breiterechts))
                    ifTrue: [deltaY := deltaRY.
                            func := rightFunction value: myRnumber.
                            func := func .
                            ^func].
                anumber > (rightMiddel + breiterechts)
                    ifTrue: [^ymin].
                ]
        ifFalse: [anumber <= (leftMiddel - breitelinks)
                    ifTrue: [^ymin].
                (anumber > (leftMiddel - breitelinks))&(anumber <= leftMiddel)
                    ifTrue: [deltaY := deltaLY.
                            func := leftFunction value: myLnumber.
                            func := func.
                            ^func].
                (anumber > leftMiddel)&(anumber <= rightMiddel)
                    ifTrue: [^ymax].
                (anumber > rightMiddel)&(anumber <= (rightMiddel + breiterechts))
                    ifTrue: [deltaY := deltaRY.
                            func := rightFunction value: myRnumber.
                            func := func.
                            ^func].
                anumber > (rightMiddel + breiterechts)
                    ifTrue: [^ymin].
                ]]
    ifTrue: [anumber <= (leftMiddel - breitelinks)
                    ifTrue: [^ymin].
                (anumber > (leftMiddel - breitelinks))&(anumber <= leftMiddel)
                    ifTrue: [deltaY := deltaLY.
                            func := leftFunction value: myLnumber.
                            func := func.
                            ^func].
                (anumber > leftMiddel)&(anumber <= rightMiddel)
                    ifTrue: [^ymax]
            ].
    ^1