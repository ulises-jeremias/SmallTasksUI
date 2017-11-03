rendering
renderContentOn: html
	html tbsListGroupItem
		passenger: self;
		with: [ html tbsRow
				with: [ html tbsColumn
						mediumSize: 8;
						extraSmallSize: 8;
						smallSize: 8;
						with: [ html label: self name.
							html textInput
								tbsFormControl;
								class: 'edit';
								style: 'display:none';
								callback: [ :value | self name: value ];
								value: self name ].
					html tbsColumn
						mediumSize: 4;
						extraSmallSize: 4;
						smallSize: 4;
						with: [ self renderTaskOptionsOn: html ] ] ]