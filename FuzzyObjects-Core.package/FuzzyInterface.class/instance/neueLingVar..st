as yet unclassified
neueLingVar: aObject
    " legt die variable in der lingvarliste ab."

    | avarname avar|

    lingvarliste isNil
        ifTrue: [lingvarliste := Dictionary new].


    avar        := aObject.
    avarname    := avar varname.

    lingvarliste at: avarname put: avar.