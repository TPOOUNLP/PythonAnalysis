initialization
initialize
	self filePath: './PythonProject/prueba.py'.
	self ast: (PythonParser2 parseFile: self filePath).