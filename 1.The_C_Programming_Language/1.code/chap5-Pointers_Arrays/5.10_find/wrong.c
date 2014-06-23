#include<stdio.h>
#include<stdlib.h>
#include<string.h>

/* Usage: ./find pattern
 * Description: find pattern matching the lines read from stdin, the print the line.
 * Date: 2014.06.23		Version: 1.0
 * Author: Jasper Li
 */

int main(int argc, char *argv[])
{
	char *line;	
	size_t len;
	ssize_t read;
	int found;

	if(argc != 2 )
	{
		printf("Usage: find pattern\n");
		return 1;
	}

	found = 0;

	while( (read = getline(&line, &len, stdin)) != EOF)
	{
		if(strstr(line, argv[1]) != NULL)
		{
			printf("%s", line);
			found ++;
		}
	}
	free(line);

	return found;
}
