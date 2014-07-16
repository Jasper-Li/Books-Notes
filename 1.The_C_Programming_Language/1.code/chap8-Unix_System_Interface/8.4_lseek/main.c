#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

/*
 * Description: Get n bytes from position, return reading bytes.
 * Version: 1.0		Date: 2014.07.16
 * Author: Jasper Li
 */
int main (void)
{
	// get n bytes from position, return reading bytes.
	int get(int fd, long position, char *buf, int n);

#define MAXNUM 100
	char buf[MAXNUM];
	int n = 10;
	int pos = 5;

	get(0, pos, buf, n);

	printf("offset: %d count: %d:\n%s\n", pos, n, buf);
	return 0;
}

//Get n bytes from position, return reading bytes.
int get(int fd, long position, char *buf, int n)
{
	int out;
	if(lseek(fd, position, 0) < 0)
		return -1;

	if((out=read(fd, buf, n)) < 0)

	{
		fprintf(stderr, "read failed, fd = %d.", fd);
		exit(1);
	}

	return out;
}


