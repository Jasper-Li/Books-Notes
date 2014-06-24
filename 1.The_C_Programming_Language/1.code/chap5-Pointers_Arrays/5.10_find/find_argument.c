#include<stdio.h>
#include<stdlib.h>
#include<string.h>
/*
 * Usage: find -n -x pattern
 * Descritption: The find utility may has arguments, which begins with a minus sign introducing an optional flag.
 * The order of command is "utils argument pattern".
 * 	-n, request the line number.
 * 	-x, except signal, print each line that does not match the pattern.
 *
 * 	Date: 2014.06.24 		Version: 2.0
 * 	Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	int flag_line, flag_except, found, line_number;
	size_t len;
	ssize_t read;
	char * line = NULL;
	char * c=NULL;

	while(--argc > 0 && (*(++argv))[0]=='-')
	{
		c = *argv;
		while(*++c)
		{
			switch(*c)
			{
				case 'n':
					flag_line = 1;
					break;
				case 'x':
					flag_except = 1;
					break;
				default:
					argc = 0;
					found = -1;
					printf("find: illigal optional %c.\n", *c);
					break;
			}
		}
	}
	
	if(argc != 1)
		printf("Usage: find -x -n pattern\n");
	else
	{
		line_number = 0;
		while((read = getline(&line, &len, stdin)) != EOF)
		{
			line_number++;

			if( (strstr(line, *argv) != NULL)  != flag_except )
			{
				found ++;

				if(flag_line)
					printf("%d:", line_number);
				printf("%s", line);

			}
				
		}
	}

	return found;
}
