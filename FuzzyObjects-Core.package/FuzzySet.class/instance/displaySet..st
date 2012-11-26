as yet unclassified
displaySet: aTool
    "Zeichnet das Set in aTool."

    | toolX toolY lingUnit wert l r|
    toolX:=470.
    toolY:=90.
    lingUnit:= ((self xmin abs) + (self xmax abs)) / toolX.
    1 to: toolX do: [:x| 
        wert:=(self xmin) + (x * lingUnit) .
        l:=self degree: wert.
        l:=(l * toolY) rounded.
        wert:=(self xmin) + ((x + 1) * lingUnit) .
        r:=self degree: wert.
        r:=(r * toolY) rounded.
        aTool
            foreColor: self setcolor;
            strokeLineFrom: (x + 10)@(toolY - l) to: (x + 11)@(toolY - r)
        ].
        aTool
            foreColor: Color blackColor;                
            strokeLineFrom: 10@1 to: 10@toolY ;            
            strokeLineFrom: 10@toolY to: (toolX + 10)@toolY