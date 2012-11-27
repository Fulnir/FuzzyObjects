as yet unclassified
varObjectToSet: aObject
    "Antwortet mit der Instance einer Ling.Var. des fuzzyset-Objects aObject."
    | myvar |

    lingVarList keysDo: [ :aVarname |
        myvar := self var: aVarname.
        (myvar setList includes: aObject)
            ifTrue: [^myvar].
    ].