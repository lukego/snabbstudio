grammar
mcodeHeader
	^'---- TRACE' asParser , #digit asParser plus trim , 'mcode' asParser , #newline asParser negate plus , #newline asParser