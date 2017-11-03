rendering
renderContentOn: html
	| newTask taskConfig currentItem itemId |
	html tbsListGroup
		passenger: self;
		id: self id;
		script:
			(html jQuery this
				on: 'click'
				selector: '.toggle'
				do:
					(html jQuery ajax
						callback: [ :passengers | 
							newTask := passengers first taskComponentIn: self tasks.
							self addTask: newTask ]
							passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
						script: [ :s | s << ((s jQuery id: 'currentTasks') append: newTask) ]));
		script:
			(html jQuery this
				on: 'click'
				selector: '.config'
				do:
					(html jQuery ajax
						callback: [ :passengers | taskConfig := WATaskConfiguration newWith: passengers first ]
							passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
						script: [ :s | s << ((s jQuery id: 'taskConfiguration') html: taskConfig) ]));
		script:
			(html jQuery this
				on: 'click'
				selector: '.destroy'
				do:
					((html jQuery ajax
						callback: [ :passengers | passengers first remove ]
							passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
						script: [ :s | s << ((s jQuery id: 'taskConfiguration') html: '') ];
						onComplete: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li') remove) asFunction: #(event)));
		script:
			(html jQuery this
				on: 'click'
				selector: 'label'
				do: ((((html jQuery expression: (JSStream on: 'event.target')) hide closest: 'li') find: '.edit') show asFunction: #(event)));
		script:
			(html jQuery this
				on: 'change'
				selector: '.edit'
				do:
					((html jQuery ajax
						serialize: (html jQuery expression: (JSStream on: 'event.target'));
						callback: [ :passengers | currentItem := passengers first ]
							passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
						callback: [ :taskId | itemId := taskId ] value: (JSStream on: '$(event.target).closest("li").get(0).id');
						script: [ :s | s << (((s jQuery id: itemId) find: 'label') html: currentItem name) ];
						onComplete:
							(((html jQuery expression: (JSStream on: 'event.target')) closest: 'li') find: '.edit') hide
								, (((html jQuery expression: (JSStream on: 'event.target')) closest: 'li') find: 'label') show) asFunction: #(event)));
		with: [ self tasks do: [ :each | each renderOn: html ] ]