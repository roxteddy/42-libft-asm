#include <ctype.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "libfts.h"

int main(void)
{

/* Test de bzero */

	char str[] = "abcd";

	printf("\n>> Test de ft_bzero <<\n\n");
	printf("str = \"%c%c%c%c\"\n", str[0], str[1], str[2], str[3]);
	printf("ft_bzero(str, 4)\n");
	ft_bzero(str, 4);
	printf("str = \"%c%c%c%c\"\n", str[0], str[1], str[2], str[3]);

/* Test de ft_strcat */

	char str1[60];
	char str2[] = "poney";
	char str3[60];
	char str4[] = "poney";

	str1[0] = 'a';
	str1[1] = '\0';
	str3[0] = 'a';
	str3[1] = '\0';

	printf("\n>> Test de ft_strcat <<\n\n");
	printf("str1 (%p) = \"%s\"\n", str1, str1);
	printf("str2 (%p) = \"%s\"\n", str2, str2);
	printf("strcat(str1, str2) : %p\n", strcat(str1, str2));
	printf("str1 (%p) = \"%s\"\n", str1, str1);
	printf("str2 (%p) = \"%s\"\n\n", str2, str2);

	printf("str3 (%p) = \"%s\"\n", str3, str3);
	printf("str4 (%p) = \"%s\"\n", str4, str4);
	printf("ft_strcat(str3, str4) : %p\n", ft_strcat(str3, str4));
	printf("str3 (%p) = \"%s\"\n", str3, str3);
	printf("str4 (%p) = \"%s\"\n", str4, str4);

/* Test de ft_isalpha */

	int c;
	int count;

	printf("\n>> Test de ft_isalpha <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
	{
		if (!ft_isalpha(c) == !isalpha(c))
			count++;
		else
			printf("error on %c (%d) : ft_isalpha returns %d and isalpha returns %d\n",
				   c, c, ft_isalpha(c), isalpha(c));
	}
	printf("ft_isalpha(c) == isalpha(c) ? %d/256\n", count);

/* Test de ft_isdigit */

	printf("\n>> Test de ft_isdigit <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (!ft_isdigit(c) == !isdigit(c)) ? 1 : 0;
	printf("ft_isdigit(c) == isdigit(c) ? %d/256\n", count);

/*	Test de ft_isalnum */

	printf("\n>> Test de ft_isalnum <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (!ft_isalnum(c) == !isalnum(c)) ? 1 : 0;
	printf("ft_ialnum(c) == isalnum(c) ? %d/256\n", count);

/* Test de ft_isascii */

	printf("\n>> Test de ft_isascii <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (!ft_isascii(c) == !isascii(c)) ? 1 : 0;
	printf("ft_iascii(c) == isascii(c) ? %d/256\n", count);

/* Test de ft_isprint */

	printf("\n>> Test de ft_isprint <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (!ft_isprint(c) == !isprint(c)) ? 1 : 0;
	printf("ft_isprint(c) == isprint(c) ? %d/256\n", count);

/* Test de ft_toupper */

	printf("\n>> Test de ft_toupper <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (ft_toupper(c) == toupper(c)) ? 1 : 0;
	printf("ft_toupper(c) == toupper(c) ? %d/256\n", count);

/* Test de ft_tolower */

	printf("\n>> Test de ft_tolower <<\n");
	c = -1;
	count = 0;
	while (++c < 256)
		count += (ft_tolower(c) == tolower(c)) ? 1 : 0;
	printf("ft_tolower(c) == tolower(c) ? %d/256\n", count);

/* Test de ft_puts */

	printf("\n>> Test de ft_puts <<\n");

	char str5[] = "salut les amis !";

	printf("puts(str) returns %d\n", puts(str5));
	printf("ft_puts(str) returns %d\n", ft_puts(str5));

	printf("puts(NULL) return %d\n", puts(NULL));
	printf("ft_puts(NULL) return %d\n", ft_puts(NULL));
/*
	close(1);
	char str6[] = "";

	dprintf(2, "puts(str) returns %d\n", puts(str6));
	dprintf(2, "ft_puts(str) returns %d\n", ft_puts(str6));
*/
/* Test de ft_strlen */

	char	str7[] = "";
	char	str8[] = "a";
	char	str9[] = "aDAWFAF";
	char	str10[] = "awfaefaefaef\0faaefaeFeffe";
	char	str11[] = "aefaefaefaefaefaefaef";

	printf("\n>> Test de ft_strlen <<\n");
	count = 0;
	count += strlen(str7) == ft_strlen(str7) ? 1 : 0;
	count += strlen(str8) == ft_strlen(str8) ? 1 : 0;
	count += strlen(str9) == ft_strlen(str9) ? 1 : 0;
	count += strlen(str10) == ft_strlen(str10) ? 1 : 0;
	count += strlen(str11) == ft_strlen(str11) ? 1 : 0;

	printf("ft_strlen() == strlen() ? %d/5\n", count);

/* Test de ft_memset */

	char str12[50];
	char str13[50];

	printf("\n>> Test de ft_memset <<\n");

	count = 0;
	memset(str12, '\0', 50);
	count += (ft_memset(str13, '\0', 50) == str13) && !strcmp(str12, str13) ? 1 : 0;
	memset(str12, 'a', 10);
	count += (ft_memset(str13, 'a', 10) == str13) && !strcmp(str12, str13) ? 1 : 0;
	memset(str12, 'b', 20);
	count += (ft_memset(str13, 'b', 20) == str13) && !strcmp(str12, str13) ? 1 : 0;
	memset(str12, 14135245, 30);
	count += (ft_memset(str13, 14135245, 30) == str13) && !strcmp(str12, str13) ? 1 : 0;

	printf("%d/4\n", count);

/* Test de ft_memcpy */

	char	str14[100];
	char	str15[100];
	char	str16[] = "abcdefghijklmnopqrstuvwxyz";

	printf("\n>> Test de ft_memcpy <<\n");

	count = 0;

	memset(str14, 0, 100);
	memset(str15, 0, 100);

	memcpy(str14, str16, 0);
	count += ((ft_memcpy(str15, str16, 0) == str15) && !strcmp(str14, str15)) ? 1 : 0;
//	printf("\"%s\" - \"%s\"\n", str14, str15);
//	printf("%p - %p\n", str15, ft_memcpy(str15, str16, 0));
	memcpy(str14, str16, 5);
	count += ((ft_memcpy(str15, str16, 5) == str15) && !strcmp(str14, str15)) ? 1 : 0;
//	printf("\"%s\" - \"%s\"\n", str14, str15);
//	printf("%p - %p\n", str15, ft_memcpy(str15, str16, 5));
	memcpy(str14, str16, 10);
	count += ((ft_memcpy(str15, str16, 10) == str15) && !strcmp(str14, str15)) ? 1 : 0;
//	printf("\"%s\" - \"%s\"\n", str14, str15);
//	printf("%p - %p\n", str15, ft_memcpy(str15, str16, 10));
	memcpy(str14, str16, 27);
	count += ((ft_memcpy(str15, str16, 27) == str15) && !strcmp(str14, str15)) ? 1 : 0;
//	printf("\"%s\" - \"%s\"\n", str14, str15);
//	printf("%p - %p\n", str15, ft_memcpy(str15, str16, 27));

	printf("%d/4\n", count);
/*
	int fd = open("ft_bzero.s", O_RDONLY);
	ft_cat(0);
	close(fd);
*/

	return (0);
}

