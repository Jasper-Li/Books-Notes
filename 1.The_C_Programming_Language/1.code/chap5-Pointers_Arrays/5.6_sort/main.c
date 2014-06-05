#include<stdio.h>
/*
 * Description: get n lines text, sort them, and print the result.
 * Version: 1.0 		Date: 2014.06.05
 * Author: Jasper Li
 */

#define MAXLINES 1000

char * nLinesData[MAXLINES];
int lines;

int readLines(char *s[]); // read n lines text, return lines number
void printLines(char *s[]); // print n lines text
void sort(char *s[]); // sort text by lines.

int main(void)
{
	if( (lines = readLines(nLinesData)) <= MAXLINES)
	{
		printf("The original:\n");
		printLines(nLinesData);

		sort(nLinesData);

		printf("The result:\n");
		printLines(nLinesData);

		return 0;
	}
	else
	{
		printf("error Too many lines input.\n");
		return 1;
	}
}

