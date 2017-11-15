rendering
renderContentOn: html
	html tbsPageHeader: [ html
				heading: [ html text: self heading.
					html space.
					html small: self section ] ]