#include<stdio.h>
#include<stdlib.h>

/*
 * Edited Code: 
 * 1. print the error message into stderr.
 * 2. terminate the function with exit();
 * Version 2.0 	Date: 2041.07.11 
 *
 * Description: Concatenate files and print on the standard output.
 * Version: 1.0 		Date: 2014.07.11
 *
 * Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	FILE *fp;
	void filecopy(FILE *in, FILE *out);
	char *name = *argv;

	if(argc == 1)
		filecopy(stdin, stdout);
	else
		while(--argc)
			if((fp=fopen(*++argv,"r")) == NULL)
			{
				fprintf(stderr, "%s Error: can not open %s.\n", name, *argv);
				exit(1);
			}
			else
			{
				filecopy(fp, stdout);
				fclose(fp);
			}
	return 0;
}


void filecopy(FILE *in, FILE *out)
{
	int c;
	while((c=fgetc(in)) != EOF)
		fputc(c, out);
}
