initialization
initialize
	super initialize.
	SmallTasksToolkit controller app init.
	self header: (STTUILayoutHeader heading: 'SmallTasks' section: self section)