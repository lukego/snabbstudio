grammar-bytecode
bytecodeTraceStart
	^'---- TRACE' asParser trim ,
		#digit asParser trim ,
		'start' asParser trim ,
		#newline asParser negate plus ,
		#newline asParser