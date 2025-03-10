# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lfabel <lfabel@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/12 10:36:55 by lfabel            #+#    #+#              #
#    Updated: 2024/08/12 12:36:02 by lfabel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a

CC		=	cc

CFLAGS	=	-Wall -Werror -Wextra

INCLUDE = includes

SRC		=	srcs/ft_printf.c\
				srcs/ft_print_hex.c\
				srcs/ft_print_nbr.c\
				srcs/ft_print_uns.c\
				srcs/ft_print_ptr.c\
				srcs/ft_helpers.c

OBJ		=	srcs/ft_printf.o\
				srcs/ft_print_hex.o\
				srcs/ft_print_nbr.o\
				srcs/ft_print_uns.o\
				srcs/ft_print_ptr.o\
				srcs/ft_helpers.o

all: $(NAME)


$(NAME): $(OBJ)
		ar -rcs $(NAME) $(OBJ)

clean: 
		rm -rf $(OBJ)

fclean: clean
		rm -f $(NAME)

re: 	fclean all

.PHONY: clean all fclean re
