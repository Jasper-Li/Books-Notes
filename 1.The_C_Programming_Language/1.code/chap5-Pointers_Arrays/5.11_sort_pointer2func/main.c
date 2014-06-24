#include<stdio.h>
#include<string.h>
/* Usage: sort -n
 * Description: get n lines text, sort them, and print the result.
 * -n, sorted by numberic order, non-digits is zero.
 *
 * Version: 2.0 		Date: 2014.06.24
 * Author: Jasper Li
 */

#define MAXLINES 1000

char * nLinesData[MAXLINES];
int lines;

int readLines(char *s[]); // read n lines text, return lines number
void printLines(char *s[]); // print n lines text
void qsort(char *s[], int left, int right,
		int (*cmp)(void*, void*));
int numcmp(char*, char*);

int main(int argc , char *argv[])
{
	int flag_num = 0;
	//optinal flag
	if(argc > 1 && strcmp(argv[1], "-n") == 0)
	{
		flag_num = 1;
	}

	// sort 
	if( (lines = readLines(nLinesData)) <= MAXLINES)
	{
		printf("The original:\n");
		printLines(nLinesData);

		qsort(nLinesData, 0, lines-1, 
			flag_num == 1 ? numcmp : strcmp);

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

