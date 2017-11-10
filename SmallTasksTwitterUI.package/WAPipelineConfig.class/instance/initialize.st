initialization
initialize
	super initialize.
	self
		taskGeneratorList: (STTTaskList newWithId: 'optionTaskList' tasks: self defaultServicesProvider);
		pipelineSwitcher: STTPipelineSwitcher new