;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:52:11 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:54:19 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, byte 0x7e
	ja false
	cmp rdi, byte 0x20
	jae true
false:
	mov rax, dword 0
	ret

true:
	mov rax, dword -1
	ret