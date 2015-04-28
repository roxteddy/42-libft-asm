;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/27 15:06:09 by mfebvay           #+#    #+#              ;
;    Updated: 2015/04/28 20:39:47 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strdup
extern _malloc
	
_ft_strdup:
    push rbp                ; save base pointer
    mov rbp, rsp			; place base pointer on stack
    sub rsp, 16				; align stack to keep 16 bytes for buffering

	cmp rdi, 0
	je null
	mov rcx, rdi
	push rdi
	
len:
	inc rcx
	cmp byte [rcx], 0
	jne len
	
alloc:
	sub rcx, rdi
	mov rdi, rcx
	push rcx
	call _malloc
	jc null
	pop rcx
	pop rsi
	mov rdi, rax
	
dup:
	rep movsb
	jmp end
	
null:
	mov rax, 0
	jmp end

end:
    mov rsp, rbp			; restore stack and base pointers
    pop rbp					;
	ret

