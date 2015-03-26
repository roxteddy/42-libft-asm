section .text
	global start
	global _ft_bzero

start:
	call _ft_bzero
	ret
	
_ft_bzero:
	cmp rsi, 0
	jna end
	dec rsi
	mov [rdi + rsi], byte 0
	jmp _ft_bzero
	
end:
	ret