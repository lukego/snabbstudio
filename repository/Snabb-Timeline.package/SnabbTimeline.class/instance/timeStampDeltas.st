analysis
timeStampDeltas
	^(2 to: records size) collect: [ :i | (records at: i) tsc - (records at: i-1) tsc ]