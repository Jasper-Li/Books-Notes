#include<stdio.h>
#include<stdlib.h>
int main(void)
{
	char *line = NULL;
	size_t len = 0;
	ssize_t read;

	while((read = getline(&line, &len, stdin)) != EOF)
	{
		printf("%zu: %s", read, line);
	}
	free(line);

	return 0;
}
		
