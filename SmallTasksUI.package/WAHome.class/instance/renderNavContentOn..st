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
		id: 'completed';
		class: 'fade in';
		with: [ self renderCompletedContentOn: html ]