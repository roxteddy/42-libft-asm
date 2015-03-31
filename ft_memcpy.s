;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 01:45:39 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/31 07:34:11 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx
	rep movsb
	pop rax
	ret

