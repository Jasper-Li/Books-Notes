#include<stdio.h>

/*
 * getint: get next integer from input, and save it into *pn
 * return EOF for end of file;
 * return zero for next input is not a number;
 * return a positive value if a valid number.
 *
 * Version: 1.0 	Date: 2014.06.04
 * Author: Jasper Li
 */
#include<ctype.h>
int getch(void);//get a character, possibily a pushed-back one.
void ungetch(int key); // push back character to input.

int getint(int *pn)
{
	char c;
	int sign;
	
	while(isspace(c=getch()))
		;

	if( !isdigit(c) && c != EOF && c != '+' && c != '-')
	{
		ungetch(c);
		return 0;
	}
	
	sign = (c== '-') ? -1 : 1;

	if(c == '+' || c == '-')
		c = getch();

	*pn = 0;
	while(isdigit(c))
	{
		*pn = (*pn) * 10 + c - '0';
		c = getch();
	}

	*pn = sign * (*pn);
	if(c!=EOF)
		ungetch(c);
	return c;
}

int main(void)
{
#define MAX 10
	int a[MAX], i, flag;

	i=0;
	while(i<MAX && (flag=getint(a+i++)) != EOF)
		if(!flag)
			printf("%d is wrong input.\n", i+1);

	printf("The result is :\n");
	for(i=0; i<MAX; i++)
		printf("[%d]=%d.\n", i, a[i]);

	return 0;
}

