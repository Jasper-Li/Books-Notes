/**
* @Description: This program is to test function getch and ungetch in conio.h
* @Date: 2014.05.15
* @Version: 1.0
* @Author: Jasper Li
*/
#include<stdio.h>
#include<ctype.h>

int getop(char s[]);
void printline(char s[]);

int main(void)
{
	#define MAXLINE 100
	char s[MAXLINE];

	while(getop(s) != EOF)
//		printline(s);
		printf("%s.\n", s);

	return 0;
}
		
int getch(void);
void ungetch(int c);
/*getop: get next character or numberic operand*/

int getop(char s[])
{
	int i, c;
	
	while( (s[0] = c = getch()) == ' ' || c == '\t')
		;
	s[1] = '\0';
	if(!isdigit(c) && c != '.')
		return c;

	i=0;
	if(isdigit(c))
		while(isdigit(s[++i] = c = getch()))
			;
	if(c == '.')
		while(isdigit(s[++i] = c = getch()))
			;
	s[i] = '\0';

	if(c != EOF)
		ungetch(c);
	return '0'; // get a number
}

void printline(char s[])
{
	int i =0;
	for(;s[i] != '\0'; i++)
		printf("%x, ", s[i]);
	printf("\n");
}

#define BUFSIZE 100
char buf[BUFSIZE];
int bufp = 0;

int getch(void) /* get a (possibly pushed-back) character*/
{
	return (bufp > 0)? buf[--bufp] : getchar();
}

void ungetch(int c)
{
	if(bufp >= BUFSIZE)
		printf("ungetch: too many characters.\n");
	else
		buf[bufp++] = c;
}
