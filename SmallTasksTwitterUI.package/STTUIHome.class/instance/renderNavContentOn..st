rendering
renderNavContentOn: html
	html tbsTabPane
		id: 'home';
		class: 'fade in active';
		with: [ self renderHomeContentOn: html ].
	html tbsTabPane
		id: 'profile';
		class: 'fade in';
		with: [ self renderProfileContentOn: html ].
		html tbsTabPane
		id: 'pipeline';
		class: 'fade in';
		with: [ self renderPipelineContentOn: html ].
	html tbsTabPane
		id: 'info';
		class: 'fade in';
		with: [ self renderInfoContentOn: html ].
	html tbsTabPane
		id: 'completed';
		class: 'fade in';
		with: [ self renderCompletedContentOn: html ]