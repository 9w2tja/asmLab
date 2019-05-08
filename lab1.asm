INCLUDE Irvine32.inc

.data
myName BYTE "WHA130052 - SHAIK SHABANA ANJUM", 0dh, 0ah, 0
Greet BYTE "Hello World!!!", 0dh, 0ah, 0

pass_marks DWORD 000032h

.code
main PROC
	call Clrscr

	mov edx, offset myName
	call WriteString

	mov edx, offset Greet
	call WriteString
	
	exit
main ENDP
END main

