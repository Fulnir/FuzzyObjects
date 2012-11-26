versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'initial version'.
		spec author: 'EdwinBuehler'.
		spec timestamp: '11/26/2012 18:43'.
		spec project: 'Gofer' with: #'stable'.
		spec 
			package: 'FuzzyObjects-Core' with: 'FuzzyObjects-Core';
			package: 'FuzzyObjects-Tests-Core' with: 'FuzzyObjects-Tests-Core'. ].
