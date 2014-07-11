#include<stdio.h>

/*
 * Description: Concatenate files and print on the standard output.
 * Version: 1.0 		Date: 2014.07.11
 * Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	FILE *fp;
	void filecopy(FILE *in, FILE *out);

	if(argc == 1)
		filecopy(stdin, stdout);
	else
		while(--argc)
			if((fp=fopen(*++argv,"r")) == NULL)
			{
				printf("Error: can not open %s.\n", *argv);
				return 1;
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
