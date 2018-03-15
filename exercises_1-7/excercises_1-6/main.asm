;
; excercises_1-6.asm
;
; Created: 15-Mar-18 11:23:36 AM
; Author : patih
;


							;SETUP
	ldi		r16, 0xff		
	out		ddra,r16		
	ldi		r17,0b1111_1011	
	ldi		r18,0b1111_1111	
Loop:
	out		porta,r17
	out		porta,r18
	rjmp	loop
