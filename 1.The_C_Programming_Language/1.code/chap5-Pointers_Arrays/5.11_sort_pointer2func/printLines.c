#include<stdio.h>

/* Description: print n lines text
 * Version 1.0 		Date: 2014.06.05
 * Author: Jasper Li
 */

extern int lines;
void printLines(char *s[]) 
{
	int i;

	printf("#####start#####\n");
	for(i=0; i<lines; i++)
		printf("%s", s[i]);
	printf("#####end#####\n");
}
