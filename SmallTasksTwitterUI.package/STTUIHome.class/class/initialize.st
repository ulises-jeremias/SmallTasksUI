initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'home'.
	WAAdmin defaultDispatcher defaultName: 'home'.
	self register: application