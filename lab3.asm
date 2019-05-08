INCLUDE Irvine32.inc
.data
myMessage BYTE "Which one of these is a fruit?",0dh,0ah,0
opt1 BYTE "A. Cauliflower",0dh,0ah,0
opt2 BYTE "B. Gorilla",0dh,0ah,0
opt3 BYTE "C. Pineapple",0dh,0ah,0
opt4 BYTE "D. Cheese",0dh,0ah,0
myMessage2 BYTE "Your answer is: ",0
Failed BYTE "You failed :(",0dh,0ah,0
Passed BYTE "You Passed :)",0dh,0ah,0
stringIn BYTE 3 DUP (?);size of string+1
passingMark BYTE "C",0
passingMark1 BYTE "c",0

.code
main PROC
	mov edx, OFFSET myMessage
	call WriteString
	mov edx, OFFSET opt1
	call WriteString
	mov edx, OFFSET opt2
	call WriteString
	mov edx, OFFSET opt3
	call WriteString
	mov edx, OFFSET opt4
	call WriteString
	mov edx, OFFSET myMessage2
	call WriteString
	mov edx, OFFSET stringIn
	mov ecx, 2;size of string
	call ReadString

	INVOKE Str_compare, addr stringin, addr passingMark
	JE Pass
	INVOKE Str_compare, addr stringin, addr passingMark1
	JE Pass
	;mov ecx, passingMark1
	;cmp ebx, ecx
	;JG Pass

	mov edx, OFFSET Failed
	call WriteString
	exit

Pass: mov edx, OFFSET Passed
	call WriteString
	exit

main ENDP
END main
