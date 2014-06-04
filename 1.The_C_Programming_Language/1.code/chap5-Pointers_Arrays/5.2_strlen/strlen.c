#include<stdio.h>
#include<string.h>

/*
 * my strlen
 */
int my_strlen(char *s)
{
	int n = 0;
	
	while(*s++ != '\0')
		n++;

	return n;
}

int main(void)
{
	
#define MAX 50
	char string[MAX];
	printf("Input a string.\n");
	scanf("%s", string);

	printf("my strlen is %d.\n standard strlen is %d.\n", my_strlen(string), strlen(string)));

	return 0;
}
