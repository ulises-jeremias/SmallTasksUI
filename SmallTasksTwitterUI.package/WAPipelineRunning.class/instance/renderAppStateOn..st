rendering
renderAppStateOn: html
	html tbsButtonGroup
		id: 'state-option';
		script: (html jQuery this on: 'click' selector: '.btn' do: (html jQuery ajax script: [:s | s<< ((html jQuery id: 'state-option') html: self run)]));
		with: [ self state renderOn: html ]