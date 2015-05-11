;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/11 11:31:58 by mfebvay           #+#    #+#              ;
;    Updated: 2015/05/11 11:47:38 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strchr

_ft_strchr:
	cmp [rdi], sil
	je found
	cmp [rdi], byte 0
	je fail
	inc rdi
	jmp _ft_strchr
	
found:
	mov rax, rdi
	ret

fail:
	mov rax, 0
	ret
