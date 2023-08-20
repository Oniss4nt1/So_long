#------------------------- Makefile for So_long ---------------------------#
################################ Colors ####################################

RED      = \033[1;31m
GREEN    = \033[1;32m
YELLOW   = \033[1;33m
BLUE     = \033[1;34m
RESET    = \033[0m

############################# Project files ################################

NAME          = so_long

<<<<<<< HEAD
SUBDIRS       = 1.init 2.map 3.sprites 4.controls 5.memory

INIT_SRCS     = init_game.c get_lines.c get_map.c init_structs.c main.c objects.c
MAP_SRCS      = check_chars.c check_map.c check_path.c
SPRITES_SRCS  = animation_sprites.c draw_sprite.c load_sprites.c sprite_utils.c
CONTROLS_SRCS = controls_utils.c mario_controls.c
MEMORY_SRCS   = memory_free.c memory_free2.c
=======
SUBDIRS       = 1.init 2.map 3.sprites 4.draw 5.controls 6.memory

INIT_SRCS     = init_buffer.c init_game.c init_map.c init_structs.c main.c
MAP_SRCS      = check_chars.c check_map.c check_path.c
SPRITES_SRCS  = animation_sprites.c load_sprites.c object_to_draw.c sprite_utils.c
DRAW_SRCS     = draws.c get_pixel.c
CONTROLS_SRCS = controls_utils.c mario_controls.c
MEMORY_SRCS   = memory_free.c
>>>>>>> 1c6e2679b2a3b698d740db3ddc3eecf76b3250a4

SRCS = $(addprefix ./src/1.init/, $(INIT_SRCS)) \
       $(addprefix ./src/2.map/, $(MAP_SRCS)) \
       $(addprefix ./src/3.sprites/, $(SPRITES_SRCS)) \
<<<<<<< HEAD
       $(addprefix ./src/4.controls/, $(CONTROLS_SRCS)) \
       $(addprefix ./src/5.memory/, $(MEMORY_SRCS)) \
	   $(LIBFT_LIB)

OBJS = $(SRCS:.c=.o)
HEADER = ./src/
=======
       $(addprefix ./src/4.draw/, $(DRAW_SRCS)) \
       $(addprefix ./src/5.controls/, $(CONTROLS_SRCS)) \
       $(addprefix ./src/6.memory/, $(MEMORY_SRCS)) \
	   $(LIBFT_LIB)

OBJS = $(SRCS:.c=.o)
HEADER = ./src/so_long.h
>>>>>>> 1c6e2679b2a3b698d740db3ddc3eecf76b3250a4

LIBFT = ./my_libft
SO_LONG = ./src

############################# Compilation ##################################

<<<<<<< HEAD
CC = clang
CFLAGS = -Wall -Wextra -Werror -g
=======
CC = gcc
CFLAGS = -Wall -Wextra -Werror
>>>>>>> 1c6e2679b2a3b698d740db3ddc3eecf76b3250a4

LIBFT_MAKE = $(MAKE) -C $(LIBFT)
LIBFT_LIB = $(LIBFT)/libft.a

############################# Rules ########################################

all: $(NAME)

$(NAME): $(LIBFT_LIB) $(OBJS)
	@echo "$(BLUE)Compiling So_long...$(RESET)"
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJS) -I $(HEADER) -L $(LIBFT) -lX11 -lXext -lmlx
	@echo "$(GREEN)So_long compiled$(RESET)"

$(LIBFT_LIB):
	@echo "$(BLUE)Compiling Libft...$(RESET)"
	@$(LIBFT_MAKE)
	@echo "$(GREEN)Libft compiled$(RESET)"

src/%.o: src/%.c
<<<<<<< HEAD
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER) -gdwarf-4
=======
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER)
>>>>>>> 1c6e2679b2a3b698d740db3ddc3eecf76b3250a4

############################# Norm rules ####################################

norm:
	@echo "$(YELLOW)Norminette...$(RESET)"
	@norminette $(SRCS) $(HEADER)
	@echo "$(GREEN)Norminette done$(RESET)"

############################# Valgrind rules ################################

leaks:
	@echo "$(YELLOW)Valgrind...$(RESET)"
	@valgrind --leak-check=full --show-reachable=yes --show-leak-kinds=all --track-origins=yes ./$(NAME)
	@echo "$(GREEN)Valgrind done$(RESET)"

############################# Clean rules ###################################

clean:
	@rm -f $(OBJS)
	@echo "$(RED)So_long objects deleted$(RESET)"
	@$(LIBFT_MAKE) clean

fclean: clean
	@rm -f $(LIBFT_LIB) $(NAME)
	@echo "$(RED)So_long deleted$(RESET)"
	@$(LIBFT_MAKE) fclean

re: fclean all

<<<<<<< HEAD
.PHONY: all clean fclean re norm leaks
=======
.PHONY: all clean fclean re norm leaks
>>>>>>> 1c6e2679b2a3b698d740db3ddc3eecf76b3250a4
