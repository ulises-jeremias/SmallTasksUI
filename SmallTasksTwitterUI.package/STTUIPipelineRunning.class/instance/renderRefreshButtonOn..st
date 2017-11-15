rendering
renderRefreshButtonOn: html
	html tbsButton
				title: 'Refresh output';
				class: 'btn btn-circle green';
				script:
					(html jQuery this
						onClick:
							(html jQuery ajax
								script: [ :s | 
									s << (s jQuery id: 'output-list') html: self componentsList.
									s << ((s jQuery id: 'items-counter') html: self componentsList items size) ]));
				with: [ html tbsGlyphIcon iconRefresh ]