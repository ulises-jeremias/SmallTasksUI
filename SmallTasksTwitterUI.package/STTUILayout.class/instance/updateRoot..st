updating
updateRoot: aRoot
	super updateRoot: aRoot.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'