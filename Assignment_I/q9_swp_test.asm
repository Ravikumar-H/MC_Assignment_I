        AREA Q9_AREA, CODE, READONLY
ENTRY

       
        LDR     r2, =0x40000000

      
        LDR     r3, =0x12341234
        STR     r3, [r2]                

    
        LDR     r1, =0x11112222          
     
        MOV     r0, #0x0

      
        SWP     r0, r1, [r2]

     
     END
