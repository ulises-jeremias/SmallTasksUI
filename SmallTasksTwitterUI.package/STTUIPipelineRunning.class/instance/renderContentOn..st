rendering
renderContentOn: html
	super renderContentOn: html.
	html tbsContainer
		class: 'text-right';
		with: [ html anchor
				title: 'Look for errors!';
				class: 'btn btn-circle red';
				url: 'running';
				with: [ html tbsGlyphIcon iconWarningSign ].
			html space.
			html anchor
				title: 'Pipeline config';
				class: 'btn btn-circle light-blue';
				url: 'config';
				with: [ html tbsGlyphIcon iconCog ].
			html space.
			self renderAppStateOn: html.
			html space.
			self renderRefreshButtonOn: html.
			html space.
			self renderCleanButtonOn: html ].
	html tbsContainer
		id: 'output-list';
		class: 'pipeline-out';
		with: [ self componentsList renderOn: html ]