/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   6.memory_free.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: brunrodr <brunrodr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/09 16:01:48 by brunrodr          #+#    #+#             */
/*   Updated: 2023/08/10 16:59:58 by brunrodr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../my_libft/include/libft.h"
#include "../include/so_long.h"

void	free_matriz(int **visited, int rows)
{
	int	row;

	row = 0;
	while (row < rows)
	{
		free(visited[row]);
		row++;
	}
	free(visited);
}

void	free_map(t_map *map)
{
	int	row;

	row = 0;
	while (row < map->rows)
	{
		free(map->matriz[row]);
		row++;
	}
	free(map->matriz);
}

void	free_sprites(t_game *game)
{
	if (game->player.sprites.bg[0])
		mlx_destroy_image(game->mlx, game->player.sprites.bg[0]);
	if (game->player.sprites.bg[1])
		mlx_destroy_image(game->mlx, game->player.sprites.bg[1]);
	if (game->player.sprites.bg[2])
		mlx_destroy_image(game->mlx, game->player.sprites.bg[2]);
	if (game->player.sprites.bg[3])
		mlx_destroy_image(game->mlx, game->player.sprites.bg[3]);
	if (game->player.sprites.mario_l[0])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_l[0]);
	if (game->player.sprites.mario_l[1])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_l[1]);
	if (game->player.sprites.mario_l[2])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_l[2]);
	if (game->player.sprites.mario_r[0])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_r[0]);
	if (game->player.sprites.mario_r[1])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_r[1]);
	if (game->player.sprites.mario_r[2])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_r[2]);
	if (game->player.sprites.mario_u[0])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_u[0]);
	if (game->player.sprites.mario_u[1])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_u[1]);
	if (game->player.sprites.mario_u[2])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_u[2]);
	if (game->player.sprites.mario_d[0])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_d[0]);
	if (game->player.sprites.mario_d[1])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_d[1]);
	if (game->player.sprites.mario_d[2])
		mlx_destroy_image(game->mlx, game->player.sprites.mario_d[2]);
	if (game->player.sprites.wall)
		mlx_destroy_image(game->mlx, game->player.sprites.wall);
	if (game->player.sprites.exit)
		mlx_destroy_image(game->mlx, game->player.sprites.exit);
	if (game->player.sprites.coins[0])
		mlx_destroy_image(game->mlx, game->player.sprites.coins[0]);
	if (game->player.sprites.coins[1])
		mlx_destroy_image(game->mlx, game->player.sprites.coins[1]);
	if (game->player.sprites.coins[2])
		mlx_destroy_image(game->mlx, game->player.sprites.coins[2]);
}

void	free_game(t_game *game)
{
	free_sprites(game);
	mlx_destroy_window(game->mlx, game->window);
	mlx_destroy_display(game->mlx);
	free_map(&game->map);
	free(game->mlx);
	exit(EXIT_SUCCESS);
}
