#include<stdio.h>
#include<string.h>
/*
 * Reverse string s.
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
void reverse_string(char s[])
{
	int i, j;
	char tmp;

	for(i=0,j=strlen(s) -1; i<j; i++,j--)
	{
		tmp = s[i];
		s[i] = s[j];
		s[j] = tmp;
	}
}

int main(void)
{
#define MAX 50
	char s[MAX];

	printf("Input a string:\n");
	scanf("%s", s);
	reverse_string(s);

	printf("The reverse result is:\n%s\n", s);

	return 0;
}
