;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 01:38:59 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/31 07:19:26 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_memset

_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	pop rax
	ret

