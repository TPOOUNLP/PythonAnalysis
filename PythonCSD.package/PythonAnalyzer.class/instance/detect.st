detection
detect
	^ self detectors
		collect:
			[ :detector | detector detectCodeSmellFromCollection: self astCollection ].