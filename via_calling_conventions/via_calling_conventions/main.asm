;
; via_calling_conventions.asm
;
; Created: 20-Mar-18 9:26:59 AM
; Author : patih
;

	call	delay

	rjmp	start

delay:
	push	r17
	push	r18
	push	r19
	push	ZH				; .def ZH = r31
	push	ZL

	in		ZH, sph
	in		ZL, sph1
	adiw	ZL, 5+3+1			; sum all push'es inside subroutine + 3 + 1

	ld		r17, Z+
delay_loop_1:
	ldi		r18, 255
delay_loop_2:
	ldi		r19, 255
delay_loop_3:
	dec		r19
	brne	delay_loop_3
	dec		r18
	brne	delay_loop_2
	dec		r17
	brne	delay_loop_1
	

	;save return value if relevant

	pop		ZL
	pop		ZH
	pop		r19
	pop		r18
	pop		r17

	ret

	ldi		r16, 0xff	
	out		ddra, r16
	out		porta, r16

start:
	ldi		r16, oxfe
	out		porta, r16
	ldi		r17, 3
	ldi		r18, 8

	clr		r16
	push	r16				;make room for return calue on the stack
	ldi		r16 ,25
	push	r16				;push 1st parameter to the stack
	call	delay
	pop		r16				;pop 1st input param of the stack
	pop		r16				;pop return value of stack and save in r16

	add		r17, r18
	ldi		r16, 0xff		;1111_1111
	out		porta, r16

	call	delay