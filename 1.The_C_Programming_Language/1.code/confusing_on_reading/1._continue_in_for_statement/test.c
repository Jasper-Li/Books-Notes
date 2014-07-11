#include<stdio.h>

int main(void)
{
	int i;

	for(i=0x1; i< 10 ; i++)
	{
		printf("%d ", i);
		
		if (i%3 == 0)
			continue;
		i++;
		printf("%d \n", i);
	}

	return 0;
}
