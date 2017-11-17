rendering
renderPipelineContentOn: html
	html heading level3
		class: 'head text-center';
		with: 'Starting Guide'.
	html paragraph
		class: 'narrow text-center';
		with: 'You should probably take a look at the starting guide!'.
	html paragraph
		class: 'text-center';
		with: [ html anchor
				target: '_blank';
				url: 'https://github.com/ulises-jeremias/SmallTasksUI/blob/master/README.md';
				class: 'btn green btn-outline-rounded';
				with: 'Starting Guide' ]