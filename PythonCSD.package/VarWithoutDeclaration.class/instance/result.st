results
result
	| report |
	report := CodeSmellReport new.
	report name: 'Var without previously declaration'.
	report filePath: self filePath.
	self declarations associations
		do: [ :assoc | 
			assoc value = ''
				ifFalse: [ self resultNodes add: assoc value ] ].
	report nodes: self resultNodes asSet.
	^ report