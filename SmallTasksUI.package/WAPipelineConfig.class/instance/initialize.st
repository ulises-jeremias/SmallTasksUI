initialization
initialize
	super initialize.
	self taskGeneratorList: self nonSelectedTasks; pipeline: self selectedTasks