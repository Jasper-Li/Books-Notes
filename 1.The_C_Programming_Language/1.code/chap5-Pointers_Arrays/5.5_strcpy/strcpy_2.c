#include<stdio.h>
/*
 * Description: copy t to s; pointer version
 * Version: 1.0 	Date: 2014.06.05
 * Author: Jasper Li
 */
void my_strcpy(char *s, char *t)
{
	while(*s++ = * t++) 
		;
}

int main(void)
{
#define MAX 50
	char source[MAX], target[MAX];
	printf("Input a string.\n");
	scanf("%s", source);

	my_strcpy(target, source);
	printf("origin: %s.\ntarget: %s.\n", source, target);

	return 0;
}
