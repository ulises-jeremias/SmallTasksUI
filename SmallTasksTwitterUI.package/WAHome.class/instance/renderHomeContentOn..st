rendering
renderHomeContentOn: html
	html heading level3
		class: 'head text-center';
		with: 'Wellcome to the SmallTasks UI'.
	html paragraph
		class: 'narrow text-center';
		with: 'We look forward to your enjoyment of our services.'.
	html paragraph
		class: 'text-center';
		with: [ html anchor
				url: 'pipeline/config';
				class: 'btn green btn-outline-rounded';
				
				with: 'Start using SmallTasks' ]