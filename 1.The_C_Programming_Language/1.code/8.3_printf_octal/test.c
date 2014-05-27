/*
 *Descrpiton: test for the distinguish of %03o and %3o in printf.
 *Result: printf in Appendix B
	0: for numeric conversions, specifies padding to the field width with leading zeros.

 *Date: 2014.05.27	
 *Version: 1.0
 *Author: Jasper Li
 */
#include<stdio.h>

int main (void)
{
#define PERMS 066
	printf("1:%03o.\n", PERMS);
	printf("2:%3o.\n", PERMS);

	return 0;
}
	
