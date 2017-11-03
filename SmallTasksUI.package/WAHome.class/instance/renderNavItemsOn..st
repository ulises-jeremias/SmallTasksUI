rendering
renderNavItemsOn: html
	html tbsNavItem
		beActive;
		with: [ html anchor
				title: 'Wellcome';
				attributeAt: 'data-toggle' put: 'tab';
				url: '#home';
				with: [ html span
						class: 'round-tabs one';
						with: [ html tbsGlyphIcon perform: #iconHome ] ] ].
	html tbsNavItem
		with: [ html anchor
				title: 'Student profile';
				attributeAt: 'data-toggle' put: 'tab';
				url: '#profile';
				with: [ html span
						class: 'round-tabs two';
						with: [ html tbsGlyphIcon perform: #iconUser ] ] ].
	html tbsNavItem
		with: [ html anchor
				title: 'Pipeline config';
				attributeAt: 'data-toggle' put: 'tab';
				url: '#pipeline';
				with: [ html span
						class: 'round-tabs three';
						with: [ html tbsGlyphIcon perform: #iconTasks ] ] ].
	html tbsNavItem
		with: [ html anchor
				title: 'Information';
				attributeAt: 'data-toggle' put: 'tab';
				url: '#info';
				with: [ html span
						class: 'round-tabs four';
						with: [ html tbsGlyphIcon perform: #iconInfo ] ] ].
	html tbsNavItem
		with: [ html anchor
			title: 'Completed';
				attributeAt: 'data-toggle' put: 'tab';
				url: '#completed';
				with: [ html span
						class: 'round-tabs five';
						with: [ html tbsGlyphIcon perform: #iconOk ] ] ]