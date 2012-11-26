FuzzyInterface

"Erzeugen eines Fuzzy-Sets."

 
 
   |kalt warm heiss niedrig mittel hoch zu halb auf temperatur druck ventil|


  | kalt |
  kalt := FuzzySet new.

    kalt
        setname:        'kalt';
        setcolor:       #blueColor;
        xmin:           -90;
        xmax:           90;
        linkemitte:     -90;
        rechtemitte:    -90;
        breitelinks:    0;
        breiterechts:   90;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;   "breitelinks muß gesetzt sein."
        rechtefunktion: #gerade.

    warm := FuzzySet new.

    warm
        setname:        'warm';
        setcolor:       #greenColor;
        xmin:           -90;
        xmax:           90;
        linkemitte:     0;
        rechtemitte:    0;
        breitelinks:    90;
        breiterechts:   90;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;   "breitelinks muß gesetzt sein."
        rechtefunktion: #gerade.

    heiss := FuzzySet new.

    heiss
        setname:        'heiss';
        setcolor:       #cyanColor;
        xmin:           -90;
        xmax:           90;
        linkemitte:     90;
        rechtemitte:    90;
        breitelinks:    90;
        breiterechts:   0;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;   "breitelinks muß gesetzt sein."
        rechtefunktion: #gerade.

    hoch := FuzzySet new.

    hoch
        setname:        'hoch';
        setcolor:       #cyanColor;
        xmin:           -500;
        xmax:           500;
        linkemitte:     500;
        rechtemitte:    500;
        breitelinks:    500;
        breiterechts:   0;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

    mittel := FuzzySet new.

    mittel
        setname:        'mittel';
        setcolor:       #greenColor;
        xmin:           -500;
        xmax:           500;
        linkemitte:     0;
        rechtemitte:    0;
        breitelinks:    500;
        breiterechts:   500;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

    niedrig := FuzzySet new.

    niedrig
        setname:        'nidrig';
        setcolor:       #blueColor;
        xmin:           -500;
        xmax:           500;
        linkemitte:     -500;
        rechtemitte:    -500;
        breitelinks:    0;
        breiterechts:   500;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

"--------------------------------------"

    auf := FuzzySet new.

    auf
        setname:        'auf';
        setcolor:       #cyanColor;
        xmin:           -100;
        xmax:           100;
        linkemitte:     100;
        rechtemitte:    100;
        breitelinks:    100;
        breiterechts:   0;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

    halb := FuzzySet new.

    halb
        setname:        'halb';
        setcolor:       #greenColor;
        xmin:           -100;
        xmax:           100;
        linkemitte:     0;
        rechtemitte:    0;
        breitelinks:    100;
        breiterechts:   100;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

    zu := FuzzySet new.

    zu
        setname:        'zu';
        setcolor:       #blueColor;
        xmin:           -100;
        xmax:           100;
        linkemitte:     -100;
        rechtemitte:    -100;
        breitelinks:    0;
        breiterechts:   100;
        ymin:           0;
        ymax:           1;
        linkefunktion:  #gerade;
        rechtefunktion: #gerade.

"erzeugen einer Linguistischen Variable."

    ventil := FuzzyLinguistischeVariable new.

    ventil
        varname: 'ventil';
        xmin: -100;
        xmax:  100;
        neuesSet: auf;
        neuesSet: halb;
        neuesSet: zu.

    druck := FuzzyLinguistischeVariable new.

    druck
        varname: 'druck';
        xmin: -500;
        xmax:  500;
        neuesSet: niedrig;
        neuesSet: mittel;
        neuesSet: hoch.

    temperatur := FuzzyLinguistischeVariable new.

    temperatur
        varname: 'temperatur';
        xmin: -90;
        xmax:  90;
        neuesSet: kalt;
        neuesSet: warm;
        neuesSet: heiss.

"Erzeugen eines Fuzzy-Interface."

    VentilSteuerung := FuzzyInterface new.

    VentilSteuerung
        flaechengroesse: 101;        "Genauigkeit der Defuzzyfizierung."
        neueLingVar: ventil;
        neueLingVar: druck;
        neueLingVar: temperatur.



    VentilSteuerung
        neueRegel: (List with: 'minimum' with: (List with: warm with: mittel ) with: halb);
        neueRegel: (List with: 'maximum' with: (List with: heiss with: hoch) with:  zu); 
        neueRegel: (List with: 'maximum' with: (List with: kalt with: niedrig) with: auf).

    "Zuerst die Regeln der ersten Schicht. Danach in der entsprechenden
    Reihenfolge die anderen Schichten. Regeln deren Ergebnis nicht als
    Ausgang gewertet werden, sondern Zwischenergebnisse sind, werden mit
    operatorZ aufgerufen. z.B. minimumZ. In der Schlußfolgerung steht
    dann eine Zwischenvariable. (z.B. Z1 )."
    "neueRegel: (List with: 'maximum' with: (List with: heiss with: hoch) with:  Z1); "
    
    "Bei einem Gamma-Operator kommt als vierter Wert im Array der Wert von 
    Gamma hinzu."
    "neueRegel: (List with: 'gamma' with: (List with: heiss with: hoch) with:  zu with: 0.5); "

    VentilSteuerung
        ausgangInit: 'ventil'.

    VentilSteuerung
        eingang: 'temperatur'   setzen: -90;
        eingang: 'druck'        setzen: 120.

   

    VentilSteuerung
        ausgangLesen: 'ventil'.
 


    " VentilSteuerung
        ausgangalle.           -defuzzyfizierung für alle ausgänge."

VentilSteuerung := FuzzyInterface new.
FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: VentilSteuerung.
FuzzyLingVarDialog initialize.
FuzzyLingVarDialog openOn: VentilSteuerung with: 'Ventil'.