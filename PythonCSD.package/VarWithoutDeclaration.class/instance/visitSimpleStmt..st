accessing
visitSimpleStmt: aSimpleStmt
	| statement |
	statement := aSimpleStmt source.
	(aSimpleStmt source includesSubstring: ' = ')
		ifTrue: [ statement := aSimpleStmt source splitOn: ' = '.
			self declarations at: (statement at: 1) put: ''.
			statement := statement at: 2 ].
	(statement includesSubstring: '"')
		ifFalse: [ statement
				splitOn: ' '
				do: [ :element | 
					(element isAllAlphaNumerics and: element isAllDigits not)
						ifTrue: [ (self reservedWords includes: element)
								ifFalse: [ self declarations
										at: element
										ifAbsentPut: [ self declarations at: element put: aSimpleStmt ] ] ] ] ]