global ft_strcpy

section .text

ft_strcpy: ; rdi - first, rsi - second arg
	xor		rax, rax 
loop:
	cmp		byte[rsi + rax], 0
	jz		.exit
	mov		dl, byte[rsi + rax]
	mov		byte[rdi + rax], dl
	inc		rax
	jmp		loop
.exit:
	mov		byte[rdi + rax], 0
	mov		rax, rdi
	ret
