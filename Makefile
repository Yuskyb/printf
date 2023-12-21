# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yususato <yususato@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/19 16:12:07 by yususato          #+#    #+#              #
#    Updated: 2023/07/03 19:04:53 by yususato         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

INCL = ft_printf.h

CC = cc

CFLAG = -Wall -Wextra -Werror

SRCS = ft_printf.c \
		ft_printf_uni.c \
		printf_tool.c
		

		

OBJS = $(SRCS:.c=.o)

all : $(NAME)
$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c $(INCL)
	$(CC) $(CFLAG) -c $< -o $@ -I$(INCL)


clean : 
	rm -f $(OBJS) $(BONUS_OBJS)

fclean : clean 
	rm -f $(NAME)

re : fclean all
