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

	i=0;
	while(isspace(s[i]))
		i++;
	
	if(s[i] == '-')
		sign = -1;
	else 
		sign = 1;
	
	if(s[i] == '-' || s[i] == '+')
		i++;

	n=0;
	while(isdigit(s[i]))
		n = n*10 + s[i++]-'0';
	
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
