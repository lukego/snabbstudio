as yet unclassified
gtInspectorSumTilesIn: composite
	<gtInspectorPresentationOrder: 40>
	| d b |
	d := Dictionary new.
	self records do: [ :e |
		d at: e messageText put: e lag + (d at: e messageText ifAbsent: 0) ].
	b := RTMondrian new.
	b nodes: d associations.
	b normalizer
		normalizeSize: [ :x | x value sqrt ];
		distinctColorUsing: #key.
	b layout circle.
	b build.
	composite roassal2
		title: 'Sum Tiles';
		initializeView: b view.