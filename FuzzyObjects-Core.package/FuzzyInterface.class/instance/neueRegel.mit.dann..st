as yet unclassified
neueRegel: aString mit: aArray dann: aObject
    "trägt eine neue regel in die regelliste regeln ein."

    |eineRegel|

    regeln isNil
        ifTrue: [regeln := Array new].
    eineRegel := Array new.

    eineRegel with: aString with: aArray with: aObject.
    regeln add: aArray.