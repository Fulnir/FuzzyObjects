" travisCI.st file:"

| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  configuration: 'FuzzyObjects';
  repository: 'filetree://', gitPath, '/FuzzyObjects';
  load.
  
"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfFuzzyObjects' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
