visualizations
gtInspectorTilesIn: composite
	<gtInspectorPresentationOrder: 30>
	| b |
	b := RTMondrian new.
	b nodes: self records.
	b normalizer
		normalizeSize: [ :x | x lag sqrt ];
		distinctColorUsing: #messageText.
	b layout grid.
	b build.
	composite roassal2
		title: 'Tiles';
		initializeView: b view.