initialization
initialize
	super initialize.
	SmallTasksToolkit controller app init.
	self header: (WAHeader heading: 'SmallTasks' section: self section)