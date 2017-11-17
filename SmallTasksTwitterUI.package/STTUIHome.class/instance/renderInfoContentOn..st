rendering
renderInfoContentOn: html
	html heading level3
		class: 'head text-center';
		with: 'SmallTasks'.
	html paragraph
		class: 'narrow text-center';
		with: 'Take a look at our page on github!'.
	html paragraph
		class: 'text-center';
		with: [ html anchor
				target: '_blank';
				url: 'https://github.com/SmallTasksFramework';
				class: 'btn green btn-outline-rounded';
				with: 'SmallTasks on GitHub' ]