initialization
initialize
	super initialize.
	self
		app: SmallTasksToolkit controller app twitter prepare;
		componentsList: SmallTasksToolkit controller tasks component componentsList new;
		state: STTUIRunningApp new. self app do