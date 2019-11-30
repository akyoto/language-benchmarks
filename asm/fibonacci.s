bits 64
global _start

_start:
	mov ecx, 1000000000
	xor eax, eax
	xor ebx, ebx
	mov edx, 1
	cmp ecx, 0

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
	mov rdi, 0
	syscall