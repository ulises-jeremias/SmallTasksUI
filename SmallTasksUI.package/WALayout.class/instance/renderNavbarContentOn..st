rendering
renderNavbarContentOn: html
	html tbsNavbar beDefault
		with: [ html
				tbsContainer: [ html
						tbsNavbarHeader: [ html tbsNavbarBrand
								url: 'home';
								with: [ html text: 'SmallTasks Client' ] ] ] ]