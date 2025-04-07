        AREA PrimeCheck, CODE, READONLY
        ENTRY

        MOV r0, #29       
        MOV r1, #2         

loop
        MUL r2, r1, r1     
        CMP r2, r0
        BHI prime         

       
        MOV r3, r0        
check_mod
        SUBS r3, r3, r1
        BPL check_mod      

        CMP r3, #0
        BEQ not_prime     

        ADD r1, r1, #1
        B loop

prime
    
        B stop

not_prime

        B stop

stop
        B stop

        END
