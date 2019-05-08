INCLUDE Irvine32.inc
.data
myName BYTE "WHA130052 – SHAIK SHABANA ANJUM", 0dh, 0ah, 0
myAsk BYTE "How many lines are required?: ", 0
myAns BYTE "*", 0
newline BYTE 0dh, 0ah

.code
main PROC

	mov edx, offset myName
	call WriteString
	mov edx, offset myAsk
	call WriteString
	call readInt

	mov ecx, eax
	mov ebx, 1

	L1:
		push ecx
		mov ecx, ebx
	L2:
		mov edx, offset myAns
		call WriteString

		loop L2

		mov edx, offset newline
		call WriteString
		inc ebx

		pop ecx

		loop L1

		exit
main ENDP
END main
