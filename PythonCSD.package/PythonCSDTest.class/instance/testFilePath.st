running
testFilePath
	self should: [ PythonParser2 parseFile: './PythonProject/notFound.py'] raise: Error .
	self shouldnt: [ PythonParser2 parseFile: pythonDetector filePath ] raise: Error.