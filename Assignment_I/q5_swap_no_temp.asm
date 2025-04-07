	AREA SwapNoTemp, CODE, READONLY
ENTRY

		MOV r0, #5
		MOV r1, #10

		EOR r0, r0, r1
		EOR r1, r0, r1
		EOR r0, r0, r1

STOP B STOP
	END
