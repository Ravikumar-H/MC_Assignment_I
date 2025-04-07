        AREA Q15_CODE, CODE, READONLY
        ENTRY

        ; r0 - key to search
        ; r1 - base address of array
        ; r2 - low index
        ; r3 - high index
        ; r4 - mid
        ; r5 - temporary register
        ; r6 - value at mid

        LDR     r0, =7              ; Key to search
        LDR     r1, =ARRAY          ; Address of array
        MOV     r2, #0              ; Low = 0
        MOV     r3, #7              ; High = 7 (array has 8 elements)

LOOP    CMP     r2, r3              ; if low > high, not found
        BGT     NOT_FOUND

        ADD     r4, r2, r3
        MOV     r5, r4, LSR #1      ; mid = (low + high) / 2

        LDR     r6, [r1, r5, LSL #2] ; r6 = array[mid]

        CMP     r0, r6
        BEQ     FOUND

        BLT     GO_LEFT

        ; Go right: low = mid + 1
        ADD     r2, r5, #1
        B       LOOP

GO_LEFT
        ; Go left: high = mid - 1
        SUB     r3, r5, #1
        B       LOOP

FOUND
        ; Result found, r5 holds the index
        B       DONE

NOT_FOUND
        ; If not found, set r5 = -1
        MOV     r5, #-1

DONE
        B DONE                   ; Infinite loop for debug view

        ; === DATA SECTION ===
        AREA Q15_DATA, DATA, READWRITE
ARRAY   DCD 1, 3, 5, 7, 9, 11, 13, 15  ; Sorted array of 8 integers

        END
