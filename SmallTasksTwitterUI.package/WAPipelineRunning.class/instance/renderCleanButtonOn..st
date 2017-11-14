rendering
renderCleanButtonOn: html
	html tbsButton
		title: 'Clear items';
		class: 'btn btn-circle red';
		script:
			(html jQuery this
				onClick:
					(html jQuery ajax
						script: [ :s | 
							s << (s jQuery id: 'output-list') html: self resetComponentsList.
							s << ((s jQuery id: 'items-counter') html: self componentsList items size) ]));
		with: [ html tbsGlyphIcon iconRemove ].
	html tbsBadge
		id: 'items-counter';
		style: 'margin-top: -10px;';
		with: self componentsList items size