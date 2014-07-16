#include<stdio.h>

//create a file for the cycle of 0 ~ 9
int main(void)
{
	int i,j;
	for (i=0; i<10; i++)
		for(j='a'; j<='z'; j++)
			printf("%c", j);

	return 0;
}
