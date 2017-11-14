initialization
initialize
	super initialize.
	self
		pipelineSwitcher: SmallTasksToolkit controller tasks component pipelineSwitcher new;
		taskGeneratorList: (SmallTasksToolkit controller tasks component tasksProvider newWith: self pipelineSwitcher).
	