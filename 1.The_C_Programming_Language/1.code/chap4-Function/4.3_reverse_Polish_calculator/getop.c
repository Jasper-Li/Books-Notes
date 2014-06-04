#include<stdio.h>
#include<ctype.h>

#define TYPE_NUMBER '0'

int getch(void);
void ungetch(int );

/* Description: get next character or numberic operand
 * Version: 1.0
 * Date: 2014.06.04
 * Author: Jasper Li
 */
int getop( char s[])
{
	char c;
	int i;

	//skip while space
	while((c=getch()) == ' ' || c == '\t' )
		;

	s[0] = c;
	s[1] = '\0';

	if( !isdigit(c) && c != '.')
		return c; // not a number

	i=0;
	if(isdigit(c)) // collect integer part
		while(isdigit(s[++i] = c = getch()))
			;

	if(c=='.') //colect fraction part
		while(isdigit(s[++i] = c = getch()))
			;
	
	//at this time s[i] is not a digit
	s[i] = '\0';
	if(c != EOF)
		ungetch(c);

	return TYPE_NUMBER;
}

