running
testFuzzySet
	| coldTest |
	self assert: FuzzySet new class = FuzzySet.
	coldTest := FuzzySet new.
	coldTest setname: 'cold';
		 setcolor: #blueColor;
		 xmin: -90;
		 xmax: 90;
		 linkemitte: -90;
		 rechtemitte: -90;
		 breitelinks: 0;
		 breiterechts: 90;
		 ymin: 0;
		 ymax: 1;
		 leftFunction: #gerade;
		 rightFunction: #gerade.
	self assert: coldTest setname = 'cold'.
	self assert: coldTest setcolor = #blueColor.
	self assert: coldTest xmin = -90.
	self assert: coldTest xmax = 90.
	self assert: coldTest linkemitte = -90.