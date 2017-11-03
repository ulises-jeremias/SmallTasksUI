rendering
renderSettingsOn: html
	html
		tbsFormGroup: [ html
				tbsRow: [ html tbsColumn
						class: 'text-right';
						mediumSize: 4;
						with: [ html label
								class: 'control-label';
								for: 'storage-path';
								with: 'Path' ].
					html tbsColumn
						mediumSize: 5;
						with: [ html textInput
								tbsFormControl;
								id: 'storage-path';
								placeholder: 'Enter a path';
								callback: [ :value | self path: value ];
								value: path;
								script: (html jQuery this onChange: (html jQuery ajax serialize: (html jQuery expression: (JSStream on: 'event.target')))) ] ] ]