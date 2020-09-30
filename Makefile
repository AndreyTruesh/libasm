ASM_CC = nasm
ASM_FLAGS = -felf64
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s
OBJS = $(SRCS:.s=.o)
NAME = libasm.a
all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.s libasm.h
	$(ASM_CC) $(ASM_FLAGS) $< -o $@

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
