;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 22:34:47 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 18:20:37 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strlen

_ft_strlen:
	mov r11, rdi
	mov rax, 0
	mov rcx, -1
	repne scasb
	mov rax, rdi
	sub rax, r11
	dec rax
	ret

