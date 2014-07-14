#include<unistd.h>
#include<stdio.h>

/*
 * Description: Copy input from stdin to stdout, use read and write of system calls.
 * Version: 1.0 		Date: 2014.07.14
 * Author: Jasper Li
 */
int main(void)
{
	char buf[BUFSIZ]; // A good size for loacal system, defined in syscalls.h
	int n;
	while((n=read(0, buf, BUFSIZ)) > 0) // FILE *stdin
		if(n != write(1, buf, n))
		{
			fprintf(stderr, "write buf error.\n");
			exit (1);
		}

	return 0;
}
