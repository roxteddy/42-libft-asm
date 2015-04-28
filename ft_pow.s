;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_pow.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/27 16:19:11 by mfebvay           #+#    #+#              ;
;    Updated: 2015/04/27 16:52:56 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global	_ft_pow
	
_ft_pow:
	cmp rsi, 0
	jb error
	mov rax, 1

pow:
	cmp rsi, 0
	je end
	imul rax, rdi
	dec rsi
	jmp pow

error:
	mov rax, 0
end:
	ret