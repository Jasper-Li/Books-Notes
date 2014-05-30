/**
 * Read a set of text lines, and prinit the longest.
 *
 * Version 2.0
 * Date 20140529
 * Author Jasper Li
 */
#undef __USE_XOPEN2K8 // remove getline defination in stdio.h
#include<stdio.h>

#define MAX_LENGTH  200
int my_getline(char line[], int maxLength);
void copy(char to[], char from[]);

int main(void)
{
	int len;	//current line length
	int max;	//max length of line
	char line[MAX_LENGTH];
	char longest[MAX_LENGTH];

	max = 0;
	while( (len = my_getline(line, MAX_LENGTH)) > 0)
	{
		if(len > max)
		{	max = len;
			copy(longest, line);
		}
	}
	
	printf("The longest length is %d:\n\"%s\".\n", max, longest);

	return 0;
}

/*
 * Read characters for max length from stdin, store in line. Resturn the length;
 */
int my_getline(char line[], int maxLength)
{
	char c;
	int i;

	for(i=0; i<maxLength - 1 && (c=getchar()) != EOF && c != '\n'; i++)
		line[i] = c;

	if(c == '\n')
		line[i++] = c;

	line[i] = '\0';

	return i;
}

void copy(char to[], char from[])
{
	int i;
/*
	i=0;
	do
	{
		to[i] = from[i];
	}while(from[i++] != '\0');
*/
	for(i=0; (to[i] = from[i]) != '\0'; i++)
		;
}

