#include<stdio.h>
#include<ctype.h>
#include"ckeys.h"
/**
 * Description: getword from statndard input.
 * Version: 1.0			Date: 2014.06.27
 * Author: Jasper Li
 */

int getword(void)
{
	extern char word[MAXWORDS];
	int getch();
	void ungetch(int key);

	int c, max=MAXWORDS;
	char *w = word;
	//skip while space
	while(isspace((c=getch())))
		;
	

	if(isalpha(c))
	{
		*w++ = c;	
		max --;

		while(--max && isalnum(*w++=getch()))
			;
		ungetch(*--w);
		*w = '\0'; // the last one is not needed.
	}
	else 
	{
		if (c == EOF)
			*w++ = c;
		else
			*w++ = c;
	
		*w='\0';
	}

	return word[0];
}
