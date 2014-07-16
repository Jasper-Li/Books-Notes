#include<stdio.h>
#include"fopen.h"
#include<stdlib.h>

/*
 * Description: Open file, return file pointer.
 * mode is 'a', 'w', 'r'
 * Version: 1.0 	Date: 2014.07.16
 * Author: Jasper Li
 */
MY_FILE * my_fopen( char *name, char *mode);

// get a char from fp
int my_getc(MY_FILE * fp);

int main(void)
{
	MY_FILE *fp;
	char name[] = "stdin";
	char mode = 'r';
	int c;

	if((fp=my_fopen(name, &mode)) == NULL)
	{
		fprintf(stderr, "can not open file %s.\n", name);
		exit (1);
	}

	while((c=my_getc(fp)) != EOF)
		printf("%c", c);

	return 0;
}
