rendering
renderConfigButtonOn: html
	html tbsButton
		class: 'config';
		with: [ html tbsGlyphIcon perform: #iconTasks ]