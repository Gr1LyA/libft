SRCS	=   ft_strmapi.c ft_strtrim.c ft_putnbr_fd.c ft_putendl_fd.c ft_itoa.c ft_split.c ft_putstr_fd.c ft_putchar_fd.c ft_strjoin.c \
			ft_substr.c ft_strdup.c ft_calloc.c ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
			ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c
OBJS	=	${SRCS:.c=.o}
SRCSB	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJSB	=	${SRCSB:.c=.o}
NAME	=	libft.a
CC	=	gcc
RM	=	rm -f
CFLAGS	=	-Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all:	${OBJS}
		ar rcs ${NAME} ${OBJS}
		
${NAME}:	all

bonus:	${OBJSB}
		ar rcs ${NAME} ${OBJSB}

clean:
			${RM} ${OBJS} ${OBJSB}

fclean:		clean
			${RM} ${NAME}

re:		fclean all
.PHONY: all clean fclean re bonus