registry
register: app
	"Prepare for deployment: remove default applications and debug toolbar"

	WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
	SmallTasksToolkit register: app.
	app
		exceptionHandler: STTUIErrorHandler;
		addLibrary: STTUIStyleSheets