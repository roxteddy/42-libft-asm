;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 20:58:24 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/27 21:11:31 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, byte 0x41
	jb false
	cmp rdi, byte 0x7a
	ja false
	cmp rdi, byte 0x5a
	jbe true
	cmp rdi, byte 0x61
	jae true

false:
	mov rax, dword 0
	ret

true:
	mov rax, dword -1
	ret