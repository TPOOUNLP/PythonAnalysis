running
testResult
	| report |
	pythonAnalyzer report.
	report := (pythonAnalyzer detectors at: 1) result.
	self deny: report isNil.
	self assert: (report isMemberOf: CodeSmellReport).
	self assert: report name equals: 'Duplicate literal string'.
	self deny: report name equals: 'Another name'.
	self deny: report nodes isEmpty.
	self assert: report nodes size identicalTo: 1.