NAME = libft.a

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c 

OBJS = ${SRCS:.c=.o}

BONUS =

BONUS_OBJS = ${BONUS:.c=.o}

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS) $(BONUS_OBJS)

fclean: clean
	rm -f $(NAME)

all:	$(NAME) clean 

re: fclean all

.PHONY:$(NAME) clean fclean all re
