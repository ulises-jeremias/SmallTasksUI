rendering
renderContentOn: html
	html
		section: [ html
				tbsRow: [ html div
						class: 'board';
						with: [ html div
								class: 'board-inner';
								with: [ html tbsNav
										beTabs;
										with: [ html div class: 'liner'.
											self renderNavItemsOn: html ] ].
							html
								tbsTabContent: [ self renderNavContentOn: html ]]]]