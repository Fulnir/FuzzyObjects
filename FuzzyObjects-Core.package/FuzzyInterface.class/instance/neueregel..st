as yet unclassified
neueregel: aBlock
    "trägt eine neue regel in die regelliste regeln ein."

    regeln isNil
        iftrue: [regeln := Set new].

    regeln add: aBlock.