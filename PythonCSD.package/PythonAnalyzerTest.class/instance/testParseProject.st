running
testParseProject
	pythonAnalyzer parseProject: './PythonProjects/TestCases'.
	self assert: pythonAnalyzer projectPath isNil not.
	self deny: pythonAnalyzer projectPath isNil.
	pythonAnalyzer
		parseProject: './PythonProjects/ThisIsNotTheTestCasesFolder'.
	self assert: pythonAnalyzer projectPath isNil.
	self deny: pythonAnalyzer projectPath isNil not