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

		NSLog (@"Fraction allocated: %i", [Fraction count]);
	}
	return 0;
}

