grammar-mcode
mcodeTraceStart
	^'---- TRACE' asParser trim ,
		#digit asParser trim ,
		'mcode' asParser trim ,
		#digit asParser plus ,
		#newline asParser