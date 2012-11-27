as yet unclassified
varToSet: aObject
    "Antwortet mit dem varnamen einer Ling.Var. des fuzzyset-Objects aObject."
    | myvar |

    lingVarList keysDo: [ :aVarname |
        myvar := self var: aVarname.
        (myvar setList includes: aObject )
            ifTrue: [^aVarname].
    ].