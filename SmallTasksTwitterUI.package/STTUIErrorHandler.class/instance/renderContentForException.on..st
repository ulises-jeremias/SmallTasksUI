actions
renderContentForException: anException on: html
	html
		tbsContainer class: 'text-center'; with: [ html heading
				level2;
				"with: anException description."
					with: 'Wait!'.
			html
				paragraph: [ html text: 'Your request could not be completed. An exception occurred. You should probably take a look on '.
					html anchor
						url: '/pipeline/config';
						with: 'pipelines!' ].
			html
				paragraph: [ html text: 'If you have any doubt, you can consult '.
					html anchor
						url: '/home';
						with: 'the starting guide at home.' ] ]