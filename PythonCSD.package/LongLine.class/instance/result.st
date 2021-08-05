results
result
	| report |
	report := CodeSmellReport new.
	report name: 'Too long line (> 79 characters)'.
	report filePath: self filePath.
	report nodes: self resultNodes asSet.
	^ report