rendering
renderSettingsOn: html
	html
		tbsFormGroup: [ html label
				for: 'hashtag';
				with: 'Hashtag'.
			html textInput
				tbsFormControl;
				id: 'hashtag';
				placeholder: 'Enter a hashtag';
				callback: [ :value | self hashtag: value ];
				value: hashtag;
				script: (html jQuery this onChange: (html jQuery ajax serialize: (html jQuery expression: (JSStream on: 'event.target')))) ]