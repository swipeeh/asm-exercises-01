;
; excercises_1-6.asm
;
; Created: 15-Mar-18 11:23:36 AM
; Author : patih
;

							; SETUP
    ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
    out ddra, r16           ; write the bit pattern to port a's data direction register
	ldi r17, 0b1010_1010	;setting led on
	ldi r18, 0b0101_0101	;setting led off
	ldi r19, 255
	ldi r20, 255
	ldi r21, 255
	ldi r22, 255
	ldi r23, 255
	ldi r24, 255
	ldi r25, 255
	ldi r26, 255
	ldi r27, 255
	ldi r28, 255
	ldi r29, 255
	ldi r30, 255
	
loop:
	out porta, r17			; putting r17 bit into portA
delay1:
	delay2:
		DEC r20				; r20--
		BREQ end2
		rjmp delay2
	end2:
	delay5:
		DEC r23				; r23--
		BREQ end5
		rjmp delay5
	end5:
	delay9:
		DEC r25				; r25--
		BREQ end9
		rjmp delay9
	end9:
	delay10:
		DEC r27				; r27--
		BREQ end10
		rjmp delay10
	end10:
	delay12:
		DEC r29				; r29--
		BREQ end12
		rjmp delay12
	end12:
	DEC r19					; r19--
	BREQ end1
	rjmp delay1
end1:
	nop
	out porta, r18			; putting r18 bit into portA

delay3:
	delay4:
		DEC r21					; r21--
		BREQ end4
		rjmp delay4
	end4:
	delay6:
		DEC r24				; r24--
		BREQ end6
		rjmp delay6
	end6:
	delay8:
		DEC r26				; r26--
		BREQ end8
		rjmp delay8
	end8:
	delay11:
		DEC r28				; r28--
		BREQ end11
		rjmp delay11
	end11:
	delay13:
		DEC r30				; r30--
		BREQ end13
		rjmp delay13
	end13:
	DEC r22					; r30--
	BREQ end3
	rjmp delay3
end3:
	rjmp loop

