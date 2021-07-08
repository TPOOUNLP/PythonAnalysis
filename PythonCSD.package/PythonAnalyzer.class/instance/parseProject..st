parsing
parseProject: aProjectPath
	| workspace |
	workspace := aProjectPath asFileReference.
	workspace exists
		ifTrue: [ | files |
			self projectPath: aProjectPath.
			files := workspace allChildrenMatching: '*.py'.
			files isNotEmpty
				ifTrue: [ files
						do: [ :file | 
							| ast |
							ast := PythonParser2 parseFile: file.
							ast filename: file fullName.
							self addAst: ast ] ] ].
	^ workspace asString