;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:50:01 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:54:28 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, byte 0x7f
	ja false
	cmp rdi, byte 0x00
	jae true

false:
	mov rax, dword 0
	ret

true:
	mov rax, dword -1
	ret