/*
 * Description: print colorful contants, which uses the bash prompt.
 */
#include<stdio.h>
int main(void)
{
	printf("\033[1;32mGreen World.\n");// print light green.

	printf("\033[0mNormal World.\n");

	return 0;
}
