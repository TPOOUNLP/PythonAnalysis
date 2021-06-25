results
result
	| report |
	report := CodeSmellReport new.
	report name: 'Print statement is used by Python 2 (The built-in function should be used in Python 3)'.
	report filePath: self filePath.
	report nodes: self resultNodes.
	^ report