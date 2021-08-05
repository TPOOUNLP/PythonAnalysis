parsing
parseProject: aProjectPath
	| workspace |
	self projectPath: nil.
	workspace := aProjectPath asFileReference.
	workspace exists
		ifTrue: [ | files |
			self projectPath: aProjectPath.
			files := workspace allChildrenMatching: '*.py'.
			files isNotEmpty
				ifTrue: [ files
						do: [ :file | 
							| ast |
							[ ast := PythonParser2 parseFile: file.
							ast filename: file fullName.
							self addAst: ast ]
								on: Error
								do: [ ^ nil ] ] ] ].
	^ workspace asString