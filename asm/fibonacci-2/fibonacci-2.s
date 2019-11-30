bits 64
global _start

_start:
	xor ecx, ecx
	mov edi, 0x1
	mov eax, 0x5f5e0ff ; 99999999

ALIGN 16
main:
	add ecx, edi
	add edi, ecx
	add ecx, edi
	add edi, ecx
	add ecx, edi
	add edi, ecx
	add ecx, edi
	add edi, ecx
	add ecx, edi
	mov edx, edi
	add edx, ecx
	mov edi, ecx
	add edi, edx
	mov ecx, edx
	add eax, 0xfffffff5 ; -11
	jnz main

	mov eax, 60
	syscall
