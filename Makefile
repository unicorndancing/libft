NAME = libft.a
OBJS = $(SOURCES:.c=.o) #remplace les .c par des .o dans les sources
OBJSBNS = $(SOURCESBONUS:.c=.o)
CC = cc
CFLAGS = -Wall -Wextra -Werror #fsanitize=adress pour les leaks de memoires
SOURCES = ft_isalnum.c	\
 	ft_isprint.c		\
  	ft_memcpy.c			\
    ft_putendl_fd.c		\
	ft_strdup.c			\
	ft_strlen.c			\
	ft_strrchr.c		\
	ft_toupper.c		\
	ft_atoi.c			\
 	ft_isalpha.c		\
 	ft_itoa.c			\
    ft_memmove.c		\
	ft_putnbr_fd.c		\
	ft_strjoin.c		\
	ft_strmapi.c		\
	ft_striteri.c		\
	ft_strtrim.c		\
	ft_bzero.c			\
 	ft_isascii.c		\
  	ft_memchr.c			\
    ft_memset.c			\
	ft_putstr_fd.c		\
	ft_strlcat.c		\
	ft_strncmp.c		\
	ft_substr.c			\
	ft_calloc.c			\
 	ft_isdigit.c		\
	ft_memcmp.c			\
 	ft_putchar_fd.c		\
 	ft_strchr.c			\
    ft_strlcpy.c		\
	ft_strnstr.c		\
	ft_split.c			\
	ft_tolower.c		\
	ft_strcmp.c

SOURCESBONUS =	ft_lstadd_back.c	\
	ft_lstadd_front.c				\
	ft_lstclear.c					\
	ft_lstdelone.c					\
	ft_lstiter.c					\
	ft_lstlast.c					\
	ft_lstnew.c						\
	ft_lstsize.c					\
	ft_lstmap.c

BLUE	= \033[34m
RESET	= \033[0m

all : $(NAME)
	
$(NAME): $(OBJS)
	echo "$(BLUE)$(NAME) \$$(arOBJS) compiled.$(RESET)"
	ar rcs $(NAME) $(OBJS)
	echo "ar rcs $(NAME) \$$(arOBJS)" 
	echo "$(BLUE)\$$(arOBJS) archived into $(NAME).$(RESET)"

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	rm -f $(OBJS) $(OBJSBNS) 
	echo "$(BLUE)Cleaned \$$(arOBJS) $(RESET)"

fclean:
	rm -f $(OBJS) $(OBJSBNS)
	echo "$(BLUE)Cleaned \$$(arOBJS).$(RESET)"
	rm -f $(NAME) 
	echo "$(BLUE)Cleaned $(NAME).$(RESET)"

re: fclean all

bonus: $(OBJS) $(OBJSBNS)
	ar rcs $(NAME) $(OBJS) $(OBJSBNS)
	echo "ar rcs $(NAME) \$$(arOBJS) \$$(bonusOBJS)"
	echo "$(BLUE)\$$(arOBJS) \$$(bonusOBJS) archived into $(NAME).$(RESET)"

.PHONY: all clean fclean re bonus objects
.SILENT: clean fclean re all bonus $(NAME)