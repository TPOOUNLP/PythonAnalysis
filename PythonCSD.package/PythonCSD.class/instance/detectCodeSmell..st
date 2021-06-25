detection
detectCodeSmell: aPyFileInputNode
	self initializeResults.
	self filePath: aPyFileInputNode filename.
	self detect: aPyFileInputNode.
	^ self result.