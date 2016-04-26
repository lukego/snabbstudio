initialization
string: index
	| acc string oldPos |
	oldPos := stream position.
	acc := OrderedCollection new.
	stream position: 64 + (1024 * 1024 * 64) + index.
	[ | next | 
		next := stream next. 
		(next = 0) ifTrue: [ next := nil ].
		next ifNotNil: [ acc add: next ].
		next ~= nil.
	] whileTrue.
	string := String new: acc size.
	(1 to: acc size) do: [ :n | string at: n put: (acc at: n) asCharacter].
	stream position: oldPos.
	^string.