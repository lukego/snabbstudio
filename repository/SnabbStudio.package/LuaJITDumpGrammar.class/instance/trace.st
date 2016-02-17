grammar
trace
	^ (#newline asParser star) ,
		bytecodeTrace ,
		irTrace ,
		mcodeTrace ,
		endTrace