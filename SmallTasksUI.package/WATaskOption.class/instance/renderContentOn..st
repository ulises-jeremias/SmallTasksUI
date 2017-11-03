rendering
renderContentOn: html
	html tbsListGroupItem
		passenger: self;
		with: [ html tbsRow
				with: [ html tbsColumn
						mediumSize: 10;
						extraSmallSize: 10;
						smallSize: 10;
						with: [ html label: self name ].
					html tbsColumn
						mediumSize: 2;
						extraSmallSize: 2;
						smallSize: 2;
						with: [ html tbsButton class: 'toggle'; with: [ html tbsGlyphIcon perform: #iconPlus ] ] ] ]