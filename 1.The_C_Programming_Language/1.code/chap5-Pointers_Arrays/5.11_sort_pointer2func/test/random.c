#include<stdio.h>
#include<stdlib.h>
int main(void)
{
	int i=100;

	while(i--)
	{
		printf("%ld\n", random());
	}

	return 0;
}
