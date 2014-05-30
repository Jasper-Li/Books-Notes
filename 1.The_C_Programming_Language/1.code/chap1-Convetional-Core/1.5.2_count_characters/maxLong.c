/**
 * printf max long, double.
 * Date 20140529
 * Jasepr Li
 */
#include<stdio.h>
#include<float.h>
#include<limits.h>

int main(void)
{
	printf("maxLong = %ld, max double is %lf.\n", LONG_MAX, DBL_MAX);
	return 0;
}

