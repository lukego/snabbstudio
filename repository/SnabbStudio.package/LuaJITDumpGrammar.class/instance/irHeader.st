grammar
irHeader
	^'---- TRACE' asParser trim , #digit asParser plus trim , 'IR' asParser , #newline asParser