as yet unclassified
display: tool
    "zeigt das Fuzzyset grafisch an."

    |deltaWert endeXAchse xLauf startpunkt muX wert colors xachse yachse xAusEcke yAusEcke stift farbe|

    colors := #(blueColor
                cyanColor
                greenColor
                yellowColor
                redColor
                magentaColor).

    farbe := #blueColor.

    xachse      := 350.
    yachse      := 250.
    xAusEcke    := 20.
    yAusEcke    := 20.

 

    stift :=tool.

 "
    stift
        place:  (xAusEcke@(yAusEcke+yachse-(ymin*yachse)));
        goto:   ((xAusEcke+((linkemitte-breitelinks)))@(yAusEcke+yachse-(ymin*yachse)));
        goto:   ((xAusEcke+(linkemitte))@(yAusEcke+yachse-(ymax*yachse)));
        goto:   ((xAusEcke+(rechtemitte))@(yAusEcke+yachse-(ymax*yachse)));
        goto:   ((xAusEcke+(rechtemitte+breiterechts))@(yAusEcke+yachse-(ymin*yachse)));
        goto:   ((xAusEcke+xachse)@(yAusEcke+yachse-(ymin*yachse))).
 "

    deltaWert := ((xmin abs) + (xmax abs)) / xachse.

    endeXAchse := false.
    xLauf := 0.
    startpunkt := (xAusEcke@(yAusEcke+yachse-(ymin*yachse))).
    stift place: startpunkt.
    [endeXAchse = true]
        whileFalse: [xLauf := xLauf + 1.
                wert := (xLauf * deltaWert) + xmin.
                muX := self degree: wert.

                stift goto: ((xLauf + xAusEcke)@(yAusEcke + yachse - (muX * yachse) rounded)).
                xLauf = xachse
                    ifTrue: [endeXAchse := true].
                ].


  

    stift
        place: (20@20);
        goto: (20@270);
        goto: (370@270).