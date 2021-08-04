generated
visitSimpleStmt: aSimpleStmt
	| statement substr|
	statement := aSimpleStmt source.
	"vamos a tener en cuenta que el signo igual esté entre espacios"
	(aSimpleStmt source includesSubstring: ' = ')
		ifTrue: [
	      statement := aSimpleStmt source splitOn: ' = '.
	      "me voy guardando las variables en declarations"
	      self declarations at: (statement at: 1) put: ''.
			statement := statement at: 2.
		].
	
	"chequeo además si alguna de las variables está siendo referenciada, no contempla la variable que está siendo asignada"
	"para chequear que es la variable, vamos a tener en cuenta que esté entre espacios"
	self declarations associations do: [ :assoc | 
		substr := ' ',assoc key,' '.
		(statement includesSubstring: substr)
		ifTrue: [
			self declarations at: (assoc key) put: (aSimpleStmt source).
		] ]
