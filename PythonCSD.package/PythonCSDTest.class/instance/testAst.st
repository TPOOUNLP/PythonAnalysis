running
testAst
	self assert: [ pythonDetector ast class = PyFileInputNode ].
	self deny: [ pythonDetector ast class = PythonCSD ].