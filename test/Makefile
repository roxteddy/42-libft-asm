#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/20 19:47:44 by mfebvay           #+#    #+#              #
#    Updated: 2015/05/11 13:29:29 by mfebvay          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY: all clean fclean re libfts

NAME    = a.out

all: $(NAME)

$(NAME): main.c libfts
	gcc -c main.c -I.. -Wall -Wextra -Werror
	ld -macosx_version_min 10.8 -lsystem main.o -L.. -lfts

%.o:%.s
	/usr/local/Cellar/nasm/2.11.08/bin//nasm -f macho64 $<

libfts:
	make -C ..

clean:
	make -C .. clean
	/bin/rm -f main.o

fclean:
	make -C .. fclean
	/bin/rm -f main.o
	/bin/rm -f $(NAME)

re: fclean all