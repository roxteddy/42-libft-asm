#include <stdlib.h>
#include <stdio.h>

void ft_bzero(char *ptr, int n);

int main(void)
{
	char str[] = "abcd";

	printf("-%c%c%c%c-\n", str[0], str[1], str[2], str[3]);
	ft_bzero(str, 4);
	printf("-%c%c%c%c-\n", str[0], str[1], str[2], str[3]);
	return (0);
}
