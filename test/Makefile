#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/20 19:47:44 by mfebvay           #+#    #+#              #
#    Updated: 2015/03/30 01:44:34 by mfebvay          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY: all clean fclean re

NAME    = asm
SRC		= ft_bzero.s ft_isalpha.s ft_strcat.s ft_strlen.s ft_toupper.s ft_cat.s \
		  ft_puts.s ft_memset.s
OBJ		= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	gcc -c main.c
	ld -macosx_version_min 10.8 -lsystem main.o $(OBJ)

%.o:%.s
	/usr/local/Cellar/nasm/2.11.08/bin//nasm -f macho64 $<

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all