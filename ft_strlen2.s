;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 22:34:47 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/28 00:05:52 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strlen

_ft_strlen:
	mov rax, 0
	mov rcx, -1
	repne scasb
	mov rax, rcx
	neg rax
	sub rax, 2
	ret

