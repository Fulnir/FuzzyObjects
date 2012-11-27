as yet unclassified
oneSet
    "zeichnet das angegebene Set."
    |aset avar|

    avar := lingVarList at: 'druck'.
    aset := avar fuzzySetNamed: 'mittel'.
    aset display