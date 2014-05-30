/**
 * Print Fahrenheit-Celsius table for fahr = 0, 20, ..., 300
 * F = (5/9)*(F-32);
 * Version: 1.0 
 * Date: 20140529
 * Author: Jasper Li
 */
#include<stdio.h>
int main(void)
{
	int fahr;

	for(fahr = 0;  fahr <= 300; fahr += 20)
		printf("%3d%6.1f\n", fahr, 5.0 * (fahr -32) / 9);

	return 0;
}
