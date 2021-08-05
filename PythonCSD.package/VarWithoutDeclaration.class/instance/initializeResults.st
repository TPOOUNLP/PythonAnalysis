initialization
initializeResults
	self resultNodes: OrderedCollection new.
	self declarations: Dictionary new.
	self
		reservedWords:
			#('and' 'as' 'assert' 'break' 'class' 'continue' 'def' 'del' 'elif' 'else' 'except' 'exec' 'finally' 'for' 'from' 'global' 'if' 'import' 'in' 'is' 'lambda' 'None' 'not' 'or' 'pass' 'print' 'raise' 'return' 'try' 'while' 'with' 'yield')