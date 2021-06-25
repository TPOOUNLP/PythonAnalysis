generated
visitSimpleStmt: aSimpleStmt
	| statement |
	(aSimpleStmt source includesSubstring: '"')
		ifFalse: [ ^ self ].
	statement := aSimpleStmt source splitOn: '"'.
	(self declarations includes: (statement at: 2))
	ifTrue: [ self resultNodes add: aSimpleStmt ]
	ifFalse: [ self declarations add: (statement at: 2) ]