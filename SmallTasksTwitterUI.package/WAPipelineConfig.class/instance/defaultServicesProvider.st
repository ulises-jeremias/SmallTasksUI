accessing
defaultServicesProvider
	| tasks |
	tasks := OrderedCollection new.
	^ tasks
		add:
			(STTTaskOption new
				name: 'Filter Task';
				id: 'filter');
		add:
			(STTTaskOption new
				name: 'Mapper Task';
				id: 'mapper');
		add:
			(STTTaskOption new
				name: 'Reporter Task';
				id: 'reporter');
		add:
			(STTTaskOption new
				name: 'Storage Task';
				id: 'storage');
		yourself