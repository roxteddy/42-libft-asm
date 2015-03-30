#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>

void	ft_bzero(char *ptr, int n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalpha(int c);
int		isdigit(int c);
int		ft_toupper(int c);
int		ft_strlen(const char *s);
void	ft_cat(int fd);
int		ft_puts(const char *s);
void	*ft_memset(void *b, int c, size_t len);

int main(void)
{
	char str[] = "abcd";

	printf("-%c%c%c%c-\n", str[0], str[1], str[2], str[3]);
	ft_bzero(str, 4);
	printf("-%c%c%c%c-\n\n", str[0], str[1], str[2], str[3]);

	char str1[60];
	str1[0] = 'a';
	str1[1] = '\0';
	char str2[] = "poney";

	printf("%p\n", str1);
	printf("-%s-\n", str1);
	printf("%p\n", ft_strcat(str1, str2));
	printf("-%s-\n", str1);

	if (ft_isalpha('2'))
		printf("%s\n", "youpi");
	else
		printf("%s\n", "kaputt");

	printf("-%c-\n", ft_toupper('r'));

	printf("%u\n", ft_strlen(""));
	printf("%u\n", ft_strlen("12345"));
	printf("%u\n", ft_strlen("123456789"));
	printf("%u\n", ft_strlen("12345jfwes'fgjkvsdgkvsg,srgopdrbmpdbopdrbmdb,df;bkmd;b,"));
/*
	int fd = open("ft_bzero.s", O_RDONLY);

	ft_cat(0);
	close(fd);
*/
//	ft_puts("coucouc les copaina wfdskegfo srgk");
	printf("puts return : %d\n", ft_puts("coucouc les copaina wfdskegfo srgk"));
	ft_memset(str1, '8', 5);
	printf("-%s-\n", str1);



	return (0);
}

