#include<stdio.h>
/*
 * Description: echo command line arguments.
 * Date: 2014.06.23 	Version: 2.0
 * Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	int i;
	while(--argc)
		printf("%s%c", *++argv, argc==1? '\0': ' ');

	printf("***\n"); // end flag.
	return 0;
}
