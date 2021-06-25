accessing
visitPrint: aPrint
	(aPrint source includesSubstring: 'print(')
		ifTrue: [ self resultNodes add: aPrint ]