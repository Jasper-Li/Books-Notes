/**
 * Copy stdin to stdout. EOF is Ctrl + D.
 * Version 1.0
 * Date 20140529
 * Author Jasper Li
 */

#include<stdio.h>
int main(void)
{
	char c;
	while((c=getchar()) != EOF)
		putchar(c);

	return 0;
}
