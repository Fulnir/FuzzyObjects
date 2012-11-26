accessing
linkefunktion: aSymbol
    "Setzen der linken Setfunktion.
    -
    Bei der Berechnung wird mit den der Funktion übergebenen Werten bei
    Null begonnen. Diese Verschiebung ( siehe bei Degree: die Variablen
    myLnumber und myRnumber) dient der automatischen Anpassung an ein
    Einheitliches Aussehen der Funktionen.
    -
    "
    |func |

    "deltaY ist die Steigung pro ganzahligem x-Wert bei einer Geraden."

    breitelinks = 0 ifTrue: [deltaLY := 0]
        ifFalse: [deltaLY := (ymax - ymin) / (breitelinks)].

    aSymbol = #gerade ifTrue: [func := [:wert |( wert  * deltaY ) + ymin ]].
    aSymbol = #gerade2 ifTrue: [func := [:wert |( wert  * wert * deltaY) + ymin]].
    aSymbol = #efunktion ifTrue: [func := [:wert |  2.718281 raisedTo: (( wert - (breitelinks)))]].
    aSymbol = #efunktionscale10 ifTrue: [func := [:wert |  2.718281 raisedTo: (( wert - (breitelinks))*deltaY*10)]].

    linkefunktion := func