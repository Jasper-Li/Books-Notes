#include<stdio.h>
#include"dcl.h"
#include<string.h>
/*
 * Description: A token is a name, a pair of (), a pair of [] perhaps including a number, or any other singal character.
 * Return: return a token type.
 *
 * Version: 1.0 		Date: 2014.06.25
 * Author Jasper Li
 */

extern char token[MAXLENGTH];

int gettoken(void)
{
	
	int getch(void);
	void ungetch(int key);

	int c;
	char *p = token;

	//skip white space
	while((c=getch()) == ' ' || c == '\t')
		;

	if(c == '(')
	{
		if((c=getch()) == ')')
		{
			strcpy(p, "()");
			return PARENS;
		}
		else
		{
			ungetch(c);
			return '('; // return '('
		}
	}
	else if(c == '[')
	{
		*p++ = c;
		while((*p++ = (c=getch())) != ']')
			;
		*p = '\0';

		return BRACKETS;
	}
	else if (isalpha(c))
	{
		*p++ = c;
		while(isalnum(c= getch()))
			*p++ = c;
		ungetch(c);
		*p= '\0';
		
		return NAME;
	}
	else
		return c;

}
