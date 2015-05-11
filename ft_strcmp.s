;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/11 11:53:59 by mfebvay           #+#    #+#              ;
;    Updated: 2015/05/11 12:20:06 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strcmp

_ft_strcmp:
	mov rax, 0

loop:	
	mov al, [rdi]
	cmp al, 0
	je end
	cmp al, [rsi]
	jne end
	inc rdi
	inc rsi
	jmp loop

end:	
	mov r11, 0
	mov r11b, [rsi]
	sub rax, r11
	ret