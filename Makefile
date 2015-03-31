#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/20 19:47:44 by mfebvay           #+#    #+#              #
#    Updated: 2015/03/31 07:33:25 by mfebvay          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY: all clean fclean re

NAME    = 	libfts.a
ASM		=	/usr/local/Cellar/nasm/2.11.08/bin/nasm -f macho64
SRC		= 	ft_bzero.s ft_isalpha.s ft_isdigit.s ft_isalnum.s ft_isascii.s \
			ft_isprint.s ft_strcat.s ft_strlen.s ft_toupper.s ft_tolower.s \
			ft_cat.s ft_puts.s ft_memset.s ft_memcpy.s
OBJ		= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)

%.o:%.s
	$(ASM) $<

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all