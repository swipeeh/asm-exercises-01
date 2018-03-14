;
; HelloWorld.asm
;
; Created: 3/7/2018 9:21:47 PM
; Author : chfs
;

                            ; SETUP
;ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
;out ddra, r16           ; write the bit pattern to port a's data direction register

                            ; MAIN
;ldi r16, ~(1<<pina)     ; invert the bit pattern 0000 0001 and write it to r16
;out porta, r16          ; write the pattern to port a's output control register


ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
out ddra, r16           ; write the bit pattern to port a's data direction register

                            ; MAIN
ldi r16, ~(7<<pina)     ; invert the bit pattern 0000 0001 and write it to r16
out porta, r16          ; write the pattern to port a's output control register

