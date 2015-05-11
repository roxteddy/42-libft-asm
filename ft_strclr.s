;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strclr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/11 11:50:51 by mfebvay           #+#    #+#              ;
;    Updated: 2015/05/11 11:53:14 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strclr

_ft_strclr:
	cmp [rdi], byte 0
	je	return
	mov [rdi], byte 0
	inc rdi
	jmp _ft_strclr
	
return:
	ret

