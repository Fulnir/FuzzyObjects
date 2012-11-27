as yet unclassified
rightFunction: aSymbol
    "setzen der rechten Setfunktion. siehe auch linkefunktion:."

    |func|

    breiterechts = 0 ifTrue: [deltaRY = 0]
        ifFalse: [deltaRY := (ymax - ymin) / (breiterechts)].

    aSymbol = #gerade ifTrue: [func := [:wert |( wert * -1 * deltaY) + ymax]].
    aSymbol = #gerade2 ifTrue: [func := [:wert |( wert  * wert * -1 * deltaY) + ymax]].
    aSymbol = #efunktion ifTrue: [func := [:wert |  2.718281 raisedTo: ( ( wert ) * -1) - ymax]].
    aSymbol = #efunktionscale10 ifTrue: [func := [:wert |  2.718281 raisedTo: (( wert * -1)*deltaY*10) - ymax]].


    rechtefunktion := func