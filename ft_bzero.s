;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:43:38 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:43:44 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global _ft_bzero

_ft_bzero:
	cmp rsi, 0
	jna end
	mov [rdi], byte 0
	inc rdi
	dec rsi
	jmp _ft_bzero

end:
	ret