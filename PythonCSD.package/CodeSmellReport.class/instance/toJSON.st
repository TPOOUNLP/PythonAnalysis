printing
toJSON
	| text |
	text := WriteStream on: ''.
	csClassName = ''
		ifFalse: [ text
				nextPutAll: '{';
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '"name": "';
				nextPutAll: self name;
				nextPutAll: '",';
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '"path": "';
				nextPutAll: self csFilePath;
				nextPutAll: '",';
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '"class": "';
				nextPutAll: self csClassName;
				nextPutAll: '",';
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '"detections": [';
				nextPut: Character cr.
			detections
				keysAndValuesDo: [ :i :detection | 
					text
						nextPut: Character tab;
						nextPut: Character tab;
						nextPutAll: '"';
						nextPutAll: detection contents;
						nextPutAll: '"'.
					i = detections size
						ifFalse: [ text nextPutAll: ',' ].
					text nextPut: Character cr ].
			text
				nextPut: Character tab;
				nextPutAll: ']';
				nextPut: Character cr;
				nextPutAll: '}' ].
	^ text contents