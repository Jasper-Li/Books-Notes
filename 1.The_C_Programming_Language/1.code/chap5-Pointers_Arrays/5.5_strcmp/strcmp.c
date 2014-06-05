#include<stdio.h>
#include<string.h>
/*
 * return 0, if s == t;
 * return <0, if s < t;
 * return >0, if s > t;
 *
 * Version: 1.0 	Date: 2014.06.05
 * Author: Jasper Li
 */
int my_strcmp(char *s, char *t)
{
	while(*s == *t)
	{
		if(*s == '\0')
			return 0;

		s++, t++;
	}

	return *s - *t;
}

int main(void)
{
#define MAX 50
	char s[MAX], t[MAX];

	printf("Input string 1:\n");
	scanf("%s", s);

	printf("Input string 2:\n");
	scanf("%s", t);

	printf("my_strcmp result: %d.\n", my_strcmp(s,t));

	printf("standard strcmp result: %d.\n", strcmp(s,t));
}
