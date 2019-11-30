bits 64
global _start

_start:
	mov ecx, 100000000
	xor eax, eax
	xor ebx, ebx
	mov edx, 1
	dec ecx

main:
	jz exit
	mov rax, rbx
	mov rbx, rdx
	mov rdx, rax
	add rdx, rbx
	dec ecx
	jmp main

exit:
	mov rax, 60
	mov rdi, rdx
	syscall
