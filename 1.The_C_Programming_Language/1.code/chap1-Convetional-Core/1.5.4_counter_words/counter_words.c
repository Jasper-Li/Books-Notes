/**
 * Counter numbers of line, words, and characters form stdin.
 * Test: compare results below.
 * 1./counter_words <filename
 * 2. wc filename
 *
 * Version 1.0
 * Date 20140529
 * Author Jasper Li
 */
#include<stdio.h>
typedef enum
{
	WORD,
	BLANK
}CharState;

int main(void)
{
	char c;		//characters for getting
	int ln, wn, cn;// line numbers, word numbers, character numbers;
	CharState state;	// state check for word judgement.

	state = BLANK;
	ln = wn = cn = 0;

	while( (c = getchar()) != EOF)
	{
		if(c == '\n') //line number
			ln++;	
		
		if(c == ' ' || c == '\n' || c == '\t') // word number
			state=BLANK;
		else
			if(state == BLANK)
			{
				state = WORD;
				wn++;
			}

		cn++;	//character number
	}

	printf("line: %d.\nword: %d.\ncharacter: %d.\n", ln, wn, cn);
	return 0;
}
