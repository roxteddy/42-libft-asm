;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 21:13:11 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/27 21:23:19 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_toupper

_ft_toupper:
	mov rax, rdi
	cmp rax, 0x61
	jb return
	cmp rax, 0x7a
	ja return
	sub rax, 0x20
return:
	ret

