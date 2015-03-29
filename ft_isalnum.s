;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:46:33 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:49:34 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isalnum

_ft_isalnum:
	cmp rdi, byte 0x30
	jb false
	cmp rdi, byte 0x7a
	ja false
	cmp rdi, byte 0x39
	jbe true
	cmp rdi, byte 0x61
	jae true
	cmp rdi, byte 0x41
	jb false
	cmp rdi, byte 0x5a
	jbe true

false:
	mov rax, dword 0
	ret

true:
	mov rax, dword -1
	ret