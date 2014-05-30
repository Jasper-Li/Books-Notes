#include<stdio.h>
#include<string.h>
/*
 * Convert integer n into string s.
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
void reverse_string(char s[]);
void itoa(int n, char s[])
{
	int sign;
	int digit;

	int i;
	sign = n< 0 ? n=-n, -1: 1;

	i=0;
	do
	{
		s[i++] = n % 10 + '0';
	}while((n/=10) != 0);

	if(sign == -1)
		s[i++] = '-';
	s[i] = '\0';

	reverse_string(s);
}

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
	int num;
	char s[MAX];

	printf("Input a num:\n");
	scanf("%d", &num);
	itoa(num, s);

	printf("The result  string is:\n%s\n", s);

	return 0;
}
