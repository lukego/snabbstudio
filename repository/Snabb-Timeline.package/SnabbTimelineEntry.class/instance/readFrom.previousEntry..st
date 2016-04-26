initialization
readFrom: stream previousEntry: prev
	"Decode raw data."
	tsc := (stream next: 8) unsignedLongLongAt: 1.
	ip := stream next: 8.
	aux := stream next: 4.
	reserved := stream next: 4.
	messageId := stream next: 8.
	message := (1 to: 4) collect: [ :i | stream next: 8 ].
	"Synthetic fields"
	lag := prev ifNil: [0] ifNotNil: [tsc - prev tsc].
	core := aux at: 1.
	numa := aux at: 4.