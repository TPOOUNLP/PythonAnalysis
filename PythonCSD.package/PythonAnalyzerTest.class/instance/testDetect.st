running
testDetect
	pythonAnalyzer parseProject: './PythonProject'.
	pythonAnalyzer addDetector: LongLine new.
	pythonAnalyzer addDetector: PrintStatement new.
	pythonAnalyzer detect