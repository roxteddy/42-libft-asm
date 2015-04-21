;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 00:00:29 by mfebvay           #+#    #+#              ;
;    Updated: 2015/04/21 16:55:37 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
bksp db "(null)", 0xa

section .text
	global _ft_puts

_ft_puts:
cmp rdi, 0
je null
mov rdx, rdi

len:
cmp [rdx], byte 0
je puts
inc rdx
jmp len

puts:
	sub rdx, rdi
	mov rsi, rdi
	mov rdi, 1
	mov rax, 0x2000000 | 4
	syscall
	jc error

end:
	push rax
	lea rsi, [rel bksp]
	add rsi, 6
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000000 | 4
	syscall
	jc error
	pop rax
	inc rax
	ret

null:
	lea rsi, [rel bksp]
	mov rdx, 7
	mov rdi, 1
	mov rax, 0x2000000 | 4
	syscall
	jc error
	ret
	
error:
	mov rax, -1
	ret