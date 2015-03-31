;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 00:00:29 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/31 06:50:22 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
bksp db "", 0xa

section .text
	global _ft_puts

_ft_puts:
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
	cmp rax, 0
	jl error

end:
	push rax
	lea rsi, [rel bksp]
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000000 | 4
	syscall
	cmp rax, 0
	jl error
	pop rax
	inc rax
	ret

error:
	ret