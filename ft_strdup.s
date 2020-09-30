global ft_strdup

extern malloc
extern ft_strlen
extern ft_strcpy

section .text

ft_strdup:
	call	ft_strlen
	inc		rax
	push	rdi
	mov		rdi, rax
	call	malloc
	cmp		rax, 0
	jz		.err
	mov		rdi, rax
	pop		rsi
	call	ft_strcpy
	mov		rax, rdi
	ret
.err:
	mov rax, 0
	ret
