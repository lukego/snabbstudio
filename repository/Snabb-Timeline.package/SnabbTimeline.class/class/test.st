test
test
	| e glimpse v es |
	e := (SnabbTimeline new load: '/home/lukego/timeline/basic1') records.
	glimpse := (1 to: 100) collect: [ :i | (e at: i) ].

	v := RTView new.
	es := (RTBox new color: Color blue; width: 16; height: 20) elementsOn: glimpse.
	es do: [ :x | x width: (x model lag / 100 min: 500)].
	v addAll: es.
	es @ RTPopup.

	RTMetricNormalizer new
		elements: es;
"		normalizeWidth: [ :x | x lag ] min: 5 max: 300;
"		alphaColor.
	RTVerticalLineLayout new alignRight; on: es.
	es @ (RTLabeled new right; color: Color black; text: [ :n | n messageText lineNumber: 1]).

	^v