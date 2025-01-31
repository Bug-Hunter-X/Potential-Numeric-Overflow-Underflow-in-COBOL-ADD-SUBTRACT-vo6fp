01  WS-AREA-1 PIC 9(5) VALUE ZEROS.
01  WS-AREA-2 PIC 9(5) VALUE ZEROS.
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0.

PROCEDURE DIVISION.
    ADD 1 TO WS-AREA-1 ON SIZE ERROR SET WS-OVERFLOW-FLAG TO 1.
    SUBTRACT 1 FROM WS-AREA-2 ON SIZE ERROR SET WS-OVERFLOW-FLAG TO 1.

    IF WS-OVERFLOW-FLAG = 1
        DISPLAY "Numeric overflow or underflow occurred!"
    ELSE
        IF WS-AREA-1 > WS-AREA-2
            DISPLAY "WS-AREA-1 is greater than WS-AREA-2"
        ELSE
            DISPLAY "WS-AREA-1 is not greater than WS-AREA-2"
        END-IF
    END-IF.
    STOP RUN.