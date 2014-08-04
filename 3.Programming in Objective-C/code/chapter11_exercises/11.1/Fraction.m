// static variable study
#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator, denominator;
-(Fraction *) initWith: (int) n over: (int) d
{
	self = [super init];
	if(self)
		[self setNumerator: n setDenominator: d];
	return self;
}
-(void) print
{
Fraction *tmpFraction = [[Fraction alloc] init];

if(denominator == 0)
	 NSLog (@"denominator is zero.");
else
{
	tmpFraction.denominator = denominator;
	tmpFraction.numerator = numerator;

	//display the value
	if(tmpFraction.denominator < 0)
	{
		tmpFraction.numerator = -tmpFraction.numerator;
		tmpFraction.denominator = -tmpFraction.denominator;
	}

	if(denominator != 1)
	NSLog (@"%i/%i", tmpFraction.numerator, tmpFraction.denominator);
	else
	NSLog (@"%i", tmpFraction.numerator);

}


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
/*
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
*/
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
+(Fraction *) allocF
{
	extern int gCounter;
	++ gCounter;

	return [Fraction alloc];
}
+(int) count
{
	extern int gCounter;
	return gCounter;
}
@end
