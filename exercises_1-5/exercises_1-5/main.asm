;
; exercises_1-5.asm
;
; Created: 13-Mar-18 11:16:59 AM
; Author : patih
;


ldi	r17,3		;add value 3 to r17
ldi	r18,33		;add value 33 to r18
ldi r19,55		;add value 55 to r18
ldi r20,12		;add value 12 to r20
ldi r16,34		;add value 34 to r21
mul	r17,r18		;multiply r17 and r18 and store result to r0
add r16,r19		;add 16 a r19 result store in r16
sub r16,r20		;substract r16 a r19
add r16,r0		;add r16 and result from r0 
nop
