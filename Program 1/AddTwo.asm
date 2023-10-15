include Irvine32.inc


; Myname: Tartil Chowdhury
; date: 2/21/2019


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
str1 BYTE "My name is Tartil Chowdhury" ,0
.code
main PROC

mov eax,8000h
mov ebx,2000h
mov ecx,1000h
mov edx,5000h

add eax, ebx; adding values 8000h and 2000h together
add ecx, edx; adding values 1000h and 5000h together

sub eax,ecx; subtracting the above sums by each other

call DumpRegs
mov edx,offset str1
call WriteString
call Crlf


INVOKE ExitProcess,0
main ENDP
END main