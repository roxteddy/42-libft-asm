/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/31 03:38:08 by mfebvay           #+#    #+#             */
/*   Updated: 2015/04/28 21:40:59 by mfebvay          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void    ft_bzero(char *ptr, int n);
char    *ft_strcat(char *s1, const char *s2);

int     ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int     isdigit(int c);
int     ft_toupper(int c);
int		ft_tolower(int c);
size_t  ft_strlen(const char *s);
void    ft_cat(int fd);
int     ft_puts(const char *s);
void    *ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *);

/* BONUS */
int		ft_pow(int n, int pow);
// pow must be >= 0. Unspecified behaviour on integer overflow.

int		ft_abs(int n);

