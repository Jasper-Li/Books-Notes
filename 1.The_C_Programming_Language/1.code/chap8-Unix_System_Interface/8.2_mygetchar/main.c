#include<stdio.h>
#include<unistd.h>

/*
 * Description: unbuffered single character input.
 * Version: 1.0 	Date:2014.07.14
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
	char c;

	return (read(0, &c, 1) == 1) ? (unsigned char) c: EOF;

}

