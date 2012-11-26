as yet unclassified
varObjectZuSet: aObject
    "Antwortet mit der Instance einer Ling.Var. des fuzzyset-Objects aObject."
    | myvar |

    lingvarliste keysDo: [ :aVarname |
        myvar := self var: aVarname.
        (myvar setliste includes: aObject)
            ifTrue: [^myvar].
    ].