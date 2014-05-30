/**
 * This program tests the power function
 * Version 1.0
 * Date 20140529
 * Author Jasper Li
 */

#include<stdio.h>

int power(int base, int n);

int main(void)
{
	int i;
	
	for(i=0; i<10; i++)
		printf("%d %3d %6d.\n", i, power(2, i), power(-3, i));

	return 0;
}

int power(int base, int n)
{
	int p = 1;
	while(n--)
		p *= base;
	
	return p;
}

	
