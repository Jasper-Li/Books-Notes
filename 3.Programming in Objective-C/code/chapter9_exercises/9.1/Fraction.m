// use the self keyword
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
	NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
	if (denominator != 0)
		return (double) numerator /denominator;
	else
		return NAN;
}

-(void) setNumerator: (int) n setDenominator: (int) d
{
	numerator = n;
	denominator = d;
}

// add a Fraction to the receiver

-(Fraction *) add: (Fraction * ) f
{
	Fraction * result = [[Fraction alloc] init];
	// To add two fractions
	// a/b + c/d = ( (a*d) + (b*c)) / (b*d)

	result.numerator = (numerator * f.denominator + denominator * f.numerator);
	result.denominator = denominator * f.denominator;

	[result reduce];

	return result;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int tmp;

	while (v != 0)
	{
		tmp = u % v;
		u = v;
		v = tmp;
	}

	numerator /= u;
	denominator /= u;
}
@end
