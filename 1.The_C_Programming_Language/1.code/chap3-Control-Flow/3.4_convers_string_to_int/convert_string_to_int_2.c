#include<stdio.h>
#include<ctype.h>

/**
 * convert string s to integer
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
int atoi(char s[])
{
	int i;
	int sign, n;

	for(i=0; isspace(s[i]); i++)
		;

	if(s[i] == '-')
		sign = -1;
	else 
		sign = 1;
	
	if(s[i] == '-' || s[i] == '+')
		i++;

	for(n=0; isdigit(s[i]); i++)
		n = n*10 + s[i]-'0';
	
	return sign * n;
}

int main(void)
{
	char s[100];
	printf("Input a string for integer.\n");
	scanf("%s", s);

	printf("The result is %d.\n", atoi(s));
	return 0;
}
