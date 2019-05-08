INCLUDE Irvine32.inc
.data
messageMe BYTE "WHA130052 – SHAIK SHABANA ANJUM", 0dh, 0ah, 0
messageAsk BYTE "Enter your exam mark: ", 0dh, 0ah, 0
messagePass BYTE "PASS", 0dh, 0ah, 0
messageFail BYTE "FAIL", 0dh, 0ah, 0

pass_marks DWORD 000032h

.code
main PROC
	call Clrscr

	mov edx, offset messageMe
	call WriteString
	mov edx, offset messageAsk
	call WriteString
	call ReadInt

	mov ebx, eax
	mov ecx, pass_marks

	CMP ebx, ecx
	JG pass_routine

	mov edx, offset messageFail
	call WriteString
	exit

	pass_routine: mov edx, offset messagePass
		call WriteString
	exit
main ENDP
END main
