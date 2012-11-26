as yet unclassified
varZuSet: aObject
    "Antwortet mit dem varnamen einer Ling.Var. des fuzzyset-Objects aObject."
    | myvar |

    lingvarliste keysDo: [ :aVarname |
        myvar := self var: aVarname.
        (myvar setliste includes: aObject )
            ifTrue: [^aVarname].
    ].