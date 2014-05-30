/**
 * Print Fahrenheit-Celsius table for fahr = 0, 20, ..., 300
 * F = (5/9)*(F-32);
 * added: replace the number 0, 300, 20 with Symblic Cosntants, so as to easy to read.
 *
 * Version: 2.0
 * Date: 20140529
 * Author: Jasper Li
 */
#include<stdio.h>

#define LOWER 0	// lower limit of the table
#define UPPER 300	// upper limit
#define STEP 20	// step size

int main(void)
{
	int fahr;

	for(fahr = LOWER;  fahr <= UPPER; fahr += STEP)
		printf("%3d%6.1f\n", fahr, 5.0 * (fahr -32) / 9);

	return 0;
}
