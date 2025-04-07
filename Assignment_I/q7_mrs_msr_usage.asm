	AREA StatusReg, CODE, READONLY
ENTRY

		MRS r0, CPSR       
		ORR r0, r0, #0x80   
		MSR CPSR_c, r0      

STOP B STOP
	END
