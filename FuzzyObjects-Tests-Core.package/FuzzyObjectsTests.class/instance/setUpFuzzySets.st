as yet unclassified
setUpFuzzySets
	self.
	kalt := FuzzySet new.
	kalt setname: 'kalt';
		 setcolor: #blueColor;
		 xmin: -90;
		 xmax: 90;
		 linkemitte: -90;
		 rechtemitte: -90;
		 breitelinks: 0;
		 breiterechts: 90;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	"gerade"
	warm := FuzzySet new.
	warm setname: 'warm';
		 setcolor: #greenColor;
		 xmin: -90;
		 xmax: 90;
		 linkemitte: 0;
		 rechtemitte: 0;
		 breitelinks: 90;
		 breiterechts: 90;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	"gerade"
	heiss := FuzzySet new.
	heiss setname: 'heiss';
		 setcolor: #cyanColor;
		 xmin: -90;
		 xmax: 90;
		 linkemitte: 90;
		 rechtemitte: 90;
		 breitelinks: 90;
		 breiterechts: 0;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	"gerade"
	hoch := FuzzySet new.
	hoch setname: 'hoch';
		 setcolor: #cyanColor;
		 xmin: -500;
		 xmax: 500;
		 linkemitte: 500;
		 rechtemitte: 500;
		 breitelinks: 500;
		 breiterechts: 0;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	mittel := FuzzySet new.
	mittel setname: 'mittel';
		 setcolor: #greenColor;
		 xmin: -500;
		 xmax: 500;
		 linkemitte: 0;
		 rechtemitte: 0;
		 breitelinks: 500;
		 breiterechts: 500;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	niedrig := FuzzySet new.
	niedrig setname: 'nidrig';
		 setcolor: #blueColor;
		 xmin: -500;
		 xmax: 500;
		 linkemitte: -500;
		 rechtemitte: -500;
		 breitelinks: 0;
		 breiterechts: 500;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	"gerade"
	auf := FuzzySet new.
	auf setname: 'auf';
		 setcolor: #cyanColor;
		 xmin: -100;
		 xmax: 100;
		 linkemitte: 100;
		 rechtemitte: 100;
		 breitelinks: 100;
		 breiterechts: 0;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	halb := FuzzySet new.
	halb setname: 'halb';
		 setcolor: #greenColor;
		 xmin: -100;
		 xmax: 100;
		 linkemitte: 0;
		 rechtemitte: 0;
		 breitelinks: 100;
		 breiterechts: 100;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade.
	zu := FuzzySet new.
	zu setname: 'zu';
		 setcolor: #blueColor;
		 xmin: -100;
		 xmax: 100;
		 linkemitte: -100;
		 rechtemitte: -100;
		 breitelinks: 0;
		 breiterechts: 100;
		 ymin: 0;
		 ymax: 1;
		 linkefunktion: #gerade;
		 rechtefunktion: #gerade