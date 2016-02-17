grammar
endTrace
	^'---- TRACE ' asParser , #digit asParser plus trim , 'stop' asParser ,
		#newline asParser negate star , #newline asParser