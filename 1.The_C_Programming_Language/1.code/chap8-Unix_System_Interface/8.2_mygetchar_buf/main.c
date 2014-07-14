#include<stdio.h>
#include<unistd.h>

/*
 * Description: A simple buffered version for single character input.
 * Version: 2.0 	Date:2014.07.14
 * Author: Jasper Li
 */
int main(void)
{
	int my_getchar(void);
	int c;

	while((c=my_getchar()) != EOF)
		putchar(c);

	return 0;
}

int my_getchar(void)
{
	static char buf[BUFSIZ];
	static char *bufp=buf;
	static int n = 0;

	if(n == 0)
	{
		n = read(0, buf, BUFSIZ);
		bufp = buf;
	}

	return (--n >= 0) ? *bufp++ : EOF;
}

