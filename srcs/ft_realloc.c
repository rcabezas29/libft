/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_realloc.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rcabezas <rcabezas@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/18 13:52:31 by rcabezas          #+#    #+#             */
/*   Updated: 2021/09/18 13:56:03 by rcabezas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void    *ft_realloc(void *ptr, size_t size)
{
	void	*new;

	if (!ptr)
		return (malloc(size));
	if (size == 0)
		return (ptr);
	new = malloc(size);
	ft_memcpy(new, ptr, size);
	return (new);
}
