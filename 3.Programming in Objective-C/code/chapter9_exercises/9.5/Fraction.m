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

-(id) myAdd: (id ) f
{
	Fraction * result = [[Fraction alloc] init];
	Fraction * tmp = f;
	// To add two fractions
	// a/b + c/d = ( (a*d) + (b*c)) / (b*d)

	result.numerator = (numerator * tmp.denominator + denominator * tmp.numerator);
	result.denominator = denominator * tmp.denominator;

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
