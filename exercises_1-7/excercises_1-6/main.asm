;
; excercises_1-6.asm
;
; Created: 15-Mar-18 11:23:36 AM
; Author : patih
;

							; SETUP
    ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
    out ddra, r16           ; write the bit pattern to port a's data direction register
	ldi r17, 0b0000_0000	;setting led on
	ldi r18, 0b1111_1111	;setting led off
	ldi r19, 100
	ldi r20, 100
	ldi r21, 100
	ldi r22, 100
	ldi r23, 100
	ldi r24, 100
	
loop:
	out porta, r17			; putting r17 bit into portA
delay1:
	delay2:
		DEC r20				; r19--
		BREQ end2
		rjmp delay2
	end2:
	delay5:
		DEC r23				; r19--
		BREQ end5
		rjmp delay5
	end5:
	DEC r19					; r19--
	BREQ end1
	rjmp delay1
end1:
	nop
	out porta, r18			; putting r18 bit into portA

delay3:
	delay4:
		DEC r21					; r19--
		BREQ end4
		rjmp delay4
	end4:
	delay6:
		DEC r24				; r19--
		BREQ end6
		rjmp delay6
	end6:
	DEC r22					; r19--
	BREQ end3
	rjmp delay3
end3:
	rjmp loop
