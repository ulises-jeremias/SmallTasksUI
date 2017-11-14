rendering
renderContentOn: html
	super renderContentOn: html.
	html
		tbsContainer: [ html tbsRow
				with: [ html tbsColumn
						mediumSize: 5;
						largeSize: 5;
						class: 'text-center';
						with: [ self renderNonSelectedTasksOn: html ].
					html tbsColumn
						mediumSize: 2;
						largeSize: 2.
					html tbsColumn
						mediumSize: 5;
						largeSize: 5;
						class: 'text-center';
						with: [ self renderCurrentTasksOn: html.
							html paragraph
								class: 'text-right';
								style: 'margin: -23px 9.5px auto auto';
								with: [ html anchor
										url: 'running';
										class: 'btn green btn-outline-rounded';
										with: 'Run pipeline' ] ] ].
			html
				tbsRow: [ html tbsColumn
						mediumSize: 12;
						id: 'taskConfiguration' ] ]