accessing
visitSimpleStmt: aSimpleStmt
	aSimpleStmt source size > 79
		ifTrue: [ self resultNodes add: aSimpleStmt ]