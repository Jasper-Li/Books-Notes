// add: methods return the (Frction * ) type 
#import "Fraction.h"

int main(int argc, char * argv[])
{
	@autoreleasepool 
	{
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];
		
		Fraction *resultFraction;

		// set two fractions to 1/4 and 1/2 and add them together.

		[aFraction setNumerator: 1 setDenominator: 4];
		[bFraction setNumerator: 1 setDenominator: 2];

		// print the result

		[aFraction print];
		NSLog (@"+");
		[bFraction print];
		NSLog (@"=");

		resultFraction = [aFraction add: bFraction];

		[resultFraction print];
	}

	return 0;
}

