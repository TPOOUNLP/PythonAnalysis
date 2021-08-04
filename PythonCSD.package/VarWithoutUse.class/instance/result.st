results
result
	| report |
	report := CodeSmellReport new.
	report name: 'Var without use'.
	report filePath: self filePath.
	
	self declarations associations do: [ :assoc | (assoc value = '')
		ifTrue: [ 
			self resultNodes add: (assoc key).
		 ] ].

	report nodes: self resultNodes.
	^ report