/*
* Description: This program tests how to input an 'EOF' from keyboard.
* Test environment: Win7 64-bit CMD
* Test result: input ctrl+Z of F6 in a single line, and press Enter.
* Version: 1.0 
* Date: 2014.05.15
* Author: Jasper Li
*/

#include<stdio.h>
#define MAXLINE 1000

int getline(char line[], int max);
void printline(char s[]);

int main(void)
{

	char line[MAXLINE];
	
	while(getline(line,MAXLINE) > 0)
	{
		//printf("%s\n", line);
		printline(line);
	}

	printline(line);
	return 0;
}

int getline(char s[], int lim)
{
	int c, i;
	
	i=0;
	while(--lim > 0 && (c=getchar())!= EOF && c!= '\n')
		s[i++] = c;
	if (c == '\n')
		s[i] = c;
	if(c== EOF)
	{	printf("get EOF.\n");
		printf("%x\n", EOF);
	}
	
	s[i] = '\0';
	return i;
}
void printline(char s[])
{
	int i =0;
	for(;s[i] != '\0'; i++)
		printf("%x, ", s[i]);
	printf("\n");
}
