as yet unclassified
neueregel: aBlock
    "trägt eine neue regel in die regelliste regeln ein."

    rules isNil
        iftrue: [rules := Set new].

    rules add: aBlock.