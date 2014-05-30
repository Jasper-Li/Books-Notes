/**
 * Count lines from stdin.
 * Version 1.0
 * Date 20140529
 * Author Jasper Li
 */
#include<stdio.h>
int main(void)
{
	int nl;
	char c;

	nl = 0;
	while( (c=getchar()) != EOF)
		if(c == '\n')
			nl++;
	
	printf("lines: %d.\n", nl);
	return 0;
}
