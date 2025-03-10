# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lfabel <lfabel@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/15 11:39:44 by lfabel            #+#    #+#              #
#    Updated: 2024/07/16 09:32:27 by lfabel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

//makefile mit libft include und erstellt executable
NAME	= libftprintf.a

EXEC	= ft_printf_test


CC		=	gcc

CFLAGS	=	-Wall -Werror -Wextra

INCLUDE = includes

SRC	=	ft_printf.c\
			ft_put_nbrbase.c\
			ft_helpers.c\
			ft_putnbr.c\
			ft_printf_unsigned.c\
			ft_print_ptr.c

SRCL	=	$(addprefix libft/, \
					ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c\
					ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c\
					ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c\
					ft_strrchr.c ft_strstr.c ft_tolower.c ft_toupper.c ft_strjoin.c ft_itoa.c\
					ft_strtrim.c ft_strmapi.c ft_striteri.c ft_putstr_fd.c ft_putnbr_fd.c\
					ft_putchar_fd.c ft_putendl_fd.c ft_split.c ft_strnstr.c ft_substr.c\
					ft_lstnew.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c\
					ft_lstlast.c ft_lstsize.c ft_lstadd_back.c ft_lstmap.c\
					)

OBJ		=		ft_printf.o ft_put_nbrbase.o ft_helpers.o ft_putnbr.o ft_printf_unsigned.o ft_print_ptr.o

OBJL	=	$(addprefix libft/, \
				ft_bzero.o ft_calloc.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o\
				ft_isprint.o ft_memchr.o ft_memcmp.o ft_memcpy.o ft_memmove.o ft_memset.o\
				ft_strchr.o ft_strdup.o ft_strlcat.o ft_strlcpy.o ft_strlen.o ft_strncmp.o\
				ft_strrchr.o ft_strstr.o ft_tolower.o ft_toupper.o ft_strjoin.o ft_itoa.o\
				ft_strtrim.o ft_strmapi.o ft_striteri.o  ft_putchar_fd.o ft_putendl_fd.o\
				ft_putnbr_fd.o ft_putstr_fd.o ft_split.o ft_strnstr.o ft_substr.o\
				ft_lstnew.o ft_lstadd_front.o ft_lstclear.o ft_lstdelone.o ft_lstiter.o\
				ft_lstlast.o ft_lstsize.o ft_lstadd_back.o ft_lstmap.o\
				)

all: $(NAME) $(EXEC)


$(NAME): $(OBJ) $(OBJL)
		ar -rcs $(NAME) $(OBJ) $(OBJL)
		
$(EXEC): $(NAME)
		$(CC) $(CFLAGS) -I$(INCLUDE) -o $(EXEC) ft_printf.c $(NAME) -Llibft -lft

$(OBJ): $(SRC)
		@make -C libft/
		@$(CC) $(CFLAGS) -c -I$(INCLUDE) $(SRC)
clean: 
		@make clean -C libft/
		rm -rf $(OBJ) $(OBJL)

fclean: clean
		@make fclean -C libft/
		rm -f $(NAME) $(EXEC)

re: 	fclean all

.PHONY: clean all flean re