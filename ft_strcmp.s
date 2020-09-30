global ft_strcmp

section .text

ft_strcmp: ; rdi - first, rsi - second
	xor		rax, rax
	xor		rdx, rdx
	xor		rbx, rbx
loop:
	mov		dl, byte[rdi + rax]
	sub		dl, byte[rsi + rax]
	cmp		dl, 0
	jnz		.exit
	cmp		byte[rdi + rax], 0
	jz		.exit
	inc		rax
	jmp		loop
.exit:
	mov		dl, byte[rdi + rax]
	mov		bl, byte[rsi + rax]
	sub		rdx, rbx
	mov		rax, rdx
	ret
