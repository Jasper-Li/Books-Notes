#include<stdio.h>
int main(void)
{
	int i=0;
	int s;
	
	s= i,++i;
	printf("s=%d, i=%d.\n", s,i);

	return 0;
}
