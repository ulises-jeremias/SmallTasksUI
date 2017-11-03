accessing
defaultCurrentTasks
	| tasks |
	tasks := OrderedCollection new.
	^ tasks
		add: (STLoaderTask newWith: 'Tweets Loader' in: tasks);
		yourself