accessing
selectedTasks
	^ WATaskList
		newWithId: 'currentTasks' tasks: self defaultCurrentTasks