/**
*This programs tests whether the value of a comma statement is the leftest vaule of operator or the rightest.
* The result is the Leftest.
* @environment: Win7 64-bit CMD, gcc 4.5.2
* @version: 1.0
* @date: 2014.05.15
* @author: Jasper Li
*/

#include<stdio.h>
int main(void)
{
	int a,i=0, j=0;
	a = i++, j+=i;
	printf("a = %d, i=%d, j=%d \n", a, i, j);
	return 0;
}
