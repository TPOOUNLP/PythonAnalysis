detection
detectCodeSmellFromCollection: anAstCollection
	^ anAstCollection collect: [ :ast | self detectCodeSmell: ast ]