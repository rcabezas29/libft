/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtok.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rcabezas <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 10:10:01 by rcabezas          #+#    #+#             */
/*   Updated: 2021/10/20 10:12:01 by rcabezas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char    *ft_strtok(const char *str, char c)
{
    int     i;
    char    *dest;
    i = 0;
    dest = ft_strdup(str);
    while (str[i] != c)
    {
        dest[i] = str[i];
        i++;
    }
    dest[i] = '\0';
	if (!dest)
		return (NULL);
    return (dest);
}
