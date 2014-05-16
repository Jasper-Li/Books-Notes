// Count characters in a line.
/* This program tests for the output infomation of %0.f in printf.
* @version: 1.0
* @date: 2014.05.12
* @author Jasper Li
*/
#include<stdio.h>
int main(void)
{
	double nc;
	for(nc=0; getchar()!='\n'; nc++)
		;
	printf("%.0f\n", nc);
}
