        AREA SetBits, CODE, READONLY
        ENTRY

        LDR r0, =0xF0F0F0F0  
        MOV r1, #0            

loop
        CMP r0, #0            
        BEQ done

        AND r2, r0, #1        
        ADD r1, r1, r2        
        LSR r0, r0, #1       
        B loop

done
        B done                

        END
