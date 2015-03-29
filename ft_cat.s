;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 18:41:25 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/29 23:17:33 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define MACH_SYSCALL(nb) 0x2000000 | nb
%define READ 3
%define WRITE 4
%define LSEEK 19
%define STDOUT 1
%define SEEK_CUR 1

section .text
	global _ft_cat

_ft_cat:
	push rbp					; save base pointer
	mov rbp, rsp				; place base pointer on stack
	sub rsp, 16					; align stack to keep 16 bytes for buffering
	push rdi					; save function parameter (int fd)

read:
	mov rdi, [rsp]				; 1st param - get fd from stack
	lea rsi, [rbp-16]

	mov rdx, 16					; 3rd param - buffer size
	mov rax, MACH_SYSCALL(READ)
	syscall
	cmp rax, 0					; if read return <= 0 jump to end
	jng end

write:
	push rax					; save read return
	mov rdi, STDOUT				; 1st param
	lea rsi, [rbp-16]

	mov rdx, rax				; 3rd param - read return
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	pop rax
	cmp rax, 16					; if read return < 16 then it is finished
	je read

end:
	mov rsp, rbp				; restore stack and base pointers
	pop rbp						;

	ret							; return >> segfault
