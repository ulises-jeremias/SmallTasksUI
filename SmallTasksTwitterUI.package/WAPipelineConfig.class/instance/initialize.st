initialization
initialize
	super initialize.
	self
		taskGeneratorList: STTTaskProvider new;
		pipelineSwitcher: STTPipelineSwitcher new