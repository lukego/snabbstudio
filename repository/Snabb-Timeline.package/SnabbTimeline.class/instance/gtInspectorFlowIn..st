as yet unclassified
gtInspectorFlowIn: composite
	<gtInspectorPresentationOrder: 50>
	| d l b |
	d := Dictionary new.
	self records do: [ :e |
		d at: e messageText put: e lag + (d at: e messageText ifAbsent: 0) ].
	b := RTMondrian new.
"	b shape ellipse.
"	b nodes: d keys.

	l := Dictionary new.
	self records inject: nil into: [ :prev :e |
		prev ifNotNil: [ l at: prev put:  e messageText ].
		e messageText ].
	b shape line.
	b edges useAssociations: l associations.
	b normalizer
		normalizeSize: [ :x | d at: x ];
		distinctColorUsing: #yourself.
	b layout tree.
	b build.
	composite roassal2
		title: 'Flow';
		initializeView: b view.