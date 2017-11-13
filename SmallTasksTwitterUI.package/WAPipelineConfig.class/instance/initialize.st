initialization
initialize
	super initialize.
	self
		pipelineSwitcher: SmallTasksToolkit controller taskController pipelineSwitcher;
		taskGeneratorList: (SmallTasksToolkit controller taskController taskProviderFor: self pipelineSwitcher)