// static variable
#import "Fraction.h"

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		Fraction *a, *b, *c;

		NSLog (@"Fraction allocated: %i", [Fraction count]);

		a = [[Fraction allocF] init];
		b = [[Fraction allocF] init];
		c = [[Fraction allocF] init];

		[a setNumerator: 2 setDenominator: 3];
		[b setNumerator: 3 setDenominator: 5];
		[c setNumerator: 4 setDenominator: 5];
		[a add: b];
		[a add: c];
		[a add: a];


		NSLog (@"Fraction added numbers: %i", [Fraction getAddCounter]);
	}
	return 0;
}

