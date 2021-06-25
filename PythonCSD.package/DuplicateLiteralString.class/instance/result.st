results
result
	| report |
	report := CodeSmellReport new.
	report name: 'Duplicate literal string'.
	report filePath: self filePath.
	report nodes: self resultNodes.
	^ report