// use the self keyword
#import "Fraction.h"

int main(int argc, char * argv[])
{
	@autoreleasepool 
	{
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		// set two fractions to 1/4 and 1/2 and add them together.

		[aFraction setNumerator: 1 setDenominator: 4];
		[bFraction setNumerator: 1 setDenominator: 2];

		// print the result

		[aFraction print];
		NSLog (@"+");
		[bFraction print];
		NSLog (@"=");

		[aFraction add: bFraction];

		// reduce the result of the addition and print the result;
//		[aFraction reduce];
		[aFraction print];
	}

	return 0;
}

