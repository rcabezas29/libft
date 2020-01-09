# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcabezas <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/07 15:53:33 by rcabezas          #+#    #+#              #
#    Updated: 2019/12/10 11:59:31 by rcabezas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c\
      ft_memcmp.c ft_strlen.c ft_strlcat.c ft_strlcpy.c ft_strchr.c\
      ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c\
      ft_isdigit.c ft_isalnum.c ft_isascii.c\
      ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c\
	  ft_strjoin.c ft_substr.c ft_split.c ft_strtrim.c ft_itoa.c\
	  ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c\
	  ft_putnbr_fd.c ft_putchar.c ft_isupper.c

BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c\
        ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c\
        ft_lstclear_bonus.c ft_lstiter_bonus.c  ft_lstmap_bonus.c

RM = rm -f

CFLAGS = -Wall -Wextra -Werror -I
INCLUDES = ./

OBJ = $(SRC:.c=.o)

BOBJ = $(BONUS:.c=.o)

$(NAME):$(SRCS) libft.h
	@gcc $(CFLAGS) $(INCLUDES) -c $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

bonus:
	@gcc $(CFLAGS) -g -c $(BONUS) $(SRC)
	@ar rc $(NAME) $(BOBJ) $(OBJ)
	@ranlib $(NAME)

all: $(NAME)

clean:
	@$(RM) $(OBJ)
	@$(RM) $(BOBJ)

fclean:     clean
	@$(RM) $(NAME)

re:		fclean all
