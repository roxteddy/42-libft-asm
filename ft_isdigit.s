;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:44:29 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/31 05:12:59 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, byte 0x30
	jb false
	cmp rdi, byte 0x39
	ja false

true:
	mov rax, dword -1
	ret

false:
	mov rax, dword 0
	ret

