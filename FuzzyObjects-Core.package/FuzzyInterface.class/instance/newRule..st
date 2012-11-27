as yet unclassified
newRule: aArray
    "trägt eine neue regel in die regelliste regeln ein."

    rules isNil
        ifTrue: [rules := Set new].

    rules add: aArray.