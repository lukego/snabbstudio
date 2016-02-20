grammar-ir
irLine
	^(irInstructionNumber trim) ,
		(irRegister optional trim) ,
		(irFlagGuard optional trim) ,
		(irFlagPhi optional trim) ,
		(irType trim) ,
		(irOpcode trim) ,
		irOperands ,
		#newline asParser optional