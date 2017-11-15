rendering
renderNavbarContentOn: html
	html tbsNavbar
		beInverse;
		class: 'navbar-fixed-top';
		with: [ html
				tbsContainer: [ html
						tbsNavbarHeader: [ html tbsNavbarBrand
								url: '/home';
								with: [ html text: 'SmallTasks Client' ] ] ] ]