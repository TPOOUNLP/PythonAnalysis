detection
report
	| jsonString |
	jsonString := String
		streamContents: [ :stream | 
			(NeoJSONWriter on: stream)
				prettyPrint: true;
				for: CodeSmellReport
					do: [ :mapping | 
					mapping mapInstVars: #(name filePath).
					mapping mapInstVar: #nodes to: 'lines' ];
				for: PySimpleStmtNode
					customDo: [ :mapping | mapping encoder: #source ];
				for: PyPrintNode
					customDo: [ :mapping | mapping encoder: #source ];
				nextPut: self detect ].
	(self projectPath , '/PA_report.json') asFileReference
		writeStreamDo: [ :stream | stream nextPutAll: jsonString ].
	^ jsonString