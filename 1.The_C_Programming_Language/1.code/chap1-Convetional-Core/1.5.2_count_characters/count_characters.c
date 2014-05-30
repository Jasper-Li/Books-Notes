/**
 * Count characters from input.
 * Version 1.0
 * Date 20140529
 * Author Jasper Li
 */
#include<stdio.h>
int main(void)
{
	double num;
	for(num =0; getchar() != EOF; num++)
		;
	printf("character number is %.0lf.\n", num);

	return 0;
}
