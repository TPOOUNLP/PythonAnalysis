running
testAddDetector
	|detector1 detector2 detector3|
	detector1:= LongLine new.
	detector2:= PrintStatement new.
	detector3:= DuplicateLiteralString new.
	pythonAnalyzer parseProject: './PythonProjects/TestCases'.
	self deny: pythonAnalyzer detectors isNil.
	self assert: pythonAnalyzer detectors isEmpty.
	pythonAnalyzer addDetector: detector1.
	pythonAnalyzer addDetector: detector2.
	self deny: pythonAnalyzer detectors isEmpty.
	self assert: pythonAnalyzer detectors size identicalTo: 2.
	self deny: (pythonAnalyzer detectors includes: detector3).
	self assert: (pythonAnalyzer detectors includes: detector1).
	pythonAnalyzer addDetector: detector3.
	self assert: pythonAnalyzer detectors size identicalTo: 3.
	self assert: (pythonAnalyzer detectors includes: detector3).