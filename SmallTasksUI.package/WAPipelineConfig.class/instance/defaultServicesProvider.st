accessing
defaultServicesProvider
	| tasks |
	tasks := OrderedCollection new.
	^ tasks
		add:
			(WATaskOption new
				name: 'Filter Task';
				id: 'filter');
		add:
			(WATaskOption new
				name: 'Mapper Task';
				id: 'mapper');
		add:
			(WATaskOption new
				name: 'Transcript Reporter Task';
				id: 'reporter');
		add:
			(WATaskOption new
				name: 'Storage Task';
				id: 'storage');
		yourself