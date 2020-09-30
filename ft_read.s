global ft_read

extern __errno_location ; int *__errno_location(void)

section .text

ft_read:
	mov		rax, 0
	syscall
	cmp		rax, 0
	js		.err
	ret
.err:
	mov		rdx, rax
	neg		rdx
	call	__errno_location
	mov		[rax], rdx
	mov		rax, -1
	ret
