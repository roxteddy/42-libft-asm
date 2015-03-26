section .text
	global start
	global _ft_strcat

start:
	call _ft_strcat
	ret
	
_ft_strcat:
	mov rax, 0
	push byte [rdi + rax]
	cmp [rdi + rax], byte 0
	jz _ft_strcat2
	inc rax
	jmp _ft_strcat

_ft_strcat2:	
	ret