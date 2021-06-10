accessing
processNode: aNode
	"(aNode respondsTo: #attributes)
		ifTrue: [ (aNode attributes at: #stopPosition) - (aNode attributes at: #startPosition) > 79
				ifTrue: [ ^ true ] ].
	^ false"
	^ aNode source size > 79