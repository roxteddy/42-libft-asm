;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:55:03 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:55:50 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_tolower

_ft_tolower:
	mov rax, rdi
	cmp rax, 0x41
	jb return
	cmp rax, 0x5a
	ja return
	add rax, 0x20
return:
	ret

