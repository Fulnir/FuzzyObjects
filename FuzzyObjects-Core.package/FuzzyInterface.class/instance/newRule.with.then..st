as yet unclassified
newRule: aString with: aArray then: aObject
    "trägt eine neue regel in die regelliste regeln ein."

    |eineRegel|

    rules isNil
        ifTrue: [rules := Array new].
    eineRegel := Array new.

    eineRegel with: aString with: aArray with: aObject.
    rules add: aArray.