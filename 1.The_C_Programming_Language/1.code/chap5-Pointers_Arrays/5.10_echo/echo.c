#include<stdio.h>
/*
 * Description: echo command line arguments.
 * Date: 2014.06.23 	Version: 1.0
 * Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	int i;
	for(i=1; i<argc; i++)
		printf("%s%c", argv[i], i==argc-1? '\0': ' ');

	printf("\n");
	return 0;
}
