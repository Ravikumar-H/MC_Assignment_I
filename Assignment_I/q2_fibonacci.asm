        AREA FibSeq, CODE, READONLY
        ENTRY

        MOV r0, #0        
        MOV r1, #1       
        MOV r2, #0       
        MOV r3, #10       

loop
        CMP r2, r3
        BEQ stop
        ADD r4, r0, r1
        MOV r0, r1
        MOV r1, r4
        ADD r2, r2, #1
        B loop

stop
        B stop          

        END               
