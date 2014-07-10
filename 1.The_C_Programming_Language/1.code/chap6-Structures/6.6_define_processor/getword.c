#include<stdio.h>
#include<ctype.h>
/**
 * Description: getword from statndard input.
 * Version: 1.0			Date: 2014.06.27
 * Author: Jasper Li
 */

#define MAXWORDS 100
char word[MAXWORDS];

int getword(void)
{
	int getch();
	void ungetch(int key);

	int c, max=MAXWORDS;
	char *w = word;
	//skip while space
	while((c=getch()) == ' ' || c == '\t')
		;
	

	if(isalnum(c))
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
//	printf("%s", word);
	return word[0];
}
