;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 01:45:39 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/30 01:45:46 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_memcpy

_ft_memcpy:
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	mov rax, rdi
	ret

