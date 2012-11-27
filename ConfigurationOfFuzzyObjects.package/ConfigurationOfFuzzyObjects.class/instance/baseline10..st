baselines
baseline10: spec
	<version: '1.0-baseline'>
	
	| gitPath |
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Baseline for FuzzyObjects. Fuzzy control snippets.'.
		spec author: 'EdwinBuehler'.
		"Travis-CI repository path"
		gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.
		spec repository:  'filetree://', gitPath, '/FuzzyObjects'.
		"Local repository path"
		spec repository: 'filetree:///Users/ed/Projekt-Olivand/Repositories/Other-Repos/FuzzyObjects'.	
				
		spec repository: 'http://www.example.com/MyProjectRepository'.
		spec project: 'Gofer' with: [
				spec
					className: 'ConfigurationOfGofer';
					versionString: #'stable';
					repository: 'http://seaside.gemstone.com/ss/metacello' ].
		spec 
			package: 'FuzzyObjects-Core' with: [
				spec requires: #('Gofer' ). ];
			package: 'FuzzyObjects-Tests-Core' with: [
				spec requires: #('FuzzyObjects-Core' ). ].
		spec 
			group: 'default' with: #('Core');
			group: 'Core' with: #('FuzzyObjects-Core' );
			group: 'Tests' with: #('FuzzyObjects-Tests-Core' ). ].
