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
						with: [ self renderCurrentTasksOn: html ] ].
			html
				tbsRow: [ html tbsColumn
						mediumSize: 12;
						id: 'taskConfiguration' ] ]