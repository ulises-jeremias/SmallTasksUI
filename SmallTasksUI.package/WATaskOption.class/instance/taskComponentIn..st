accessing
taskComponentIn: aCollection
	^ STProcessorTask perform: (self id , 'In:') asSymbol with: aCollection