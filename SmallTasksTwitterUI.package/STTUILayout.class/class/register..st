registry
register: app
	SmallTasksToolkit register: app.
	app
		exceptionHandler: STTUIErrorHandler;
		addLibrary: STTUIStyleSheets