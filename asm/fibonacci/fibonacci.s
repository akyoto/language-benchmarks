bits 64
global _start

_start:
	mov ecx, 100000000
	xor eax, eax
	xor ebx, ebx
	mov edx, 1
	dec ecx

ALIGN 16
main:
	mov rax, rbx
	mov rbx, rdx
	mov rdx, rax
	add rdx, rbx
	dec ecx
	jnz main

exit:
	mov rax, 60
	mov rdi, rdx
	syscall
