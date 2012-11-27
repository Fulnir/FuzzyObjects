as yet unclassified
newLingVar: aObject
    " legt die variable in der lingvarliste ab."

    | avarname avar|

    lingVarList isNil
        ifTrue: [lingVarList := Dictionary new].


    avar        := aObject.
    avarname    := avar varName.

    lingVarList at: avarname put: avar.