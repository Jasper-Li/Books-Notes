#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print: (BOOL) flagReduce
{
	Fraction *tmpFraction = [[Fraction alloc] init];

	if(denominator == 0)
		 NSLog (@"denominator is zero.");
	else
	{
		tmpFraction.denominator = denominator;
		tmpFraction.numerator = numerator;

		if (flagReduce == YES )
		[tmpFraction reduce];	

		//display the value
		if(tmpFraction.denominator < 0)
		{
			tmpFraction.numerator = -tmpFraction.numerator;
			tmpFraction.denominator = -tmpFraction.denominator;
		}
		
		NSLog (@"%i/%i", tmpFraction.numerator, tmpFraction.denominator);
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

-(Fraction * ) add: (Fraction * ) f
{
	// To add two fractions
	// a/b + c/d = ( (a*d) + (b*c)) / (b*d)

	// result will store the result of the addition 
	Fraction *result = [[Fraction alloc] init];
	result.numerator = (numerator * f.denominator + denominator * f.numerator);
	result.denominator = denominator * f.denominator;

//	[result reduce];
	return result;
}

-(Fraction * ) subtract: (Fraction *) f
{
	// to substract two fractions 
	// a/b - c/d = ( a * d - b * c ) / ( b * d )

	Fraction * result = [[Fraction alloc] init];

	result.numerator = ( numerator * f.denominator - denominator * f.numerator );
	result.denominator = denominator * f. denominator;

//	[result reduce];
	return result;
}

-(Fraction *) multiply: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];
	result.numerator = numerator * f.numerator;
	result.denominator = denominator * f.denominator;

//	[result reduce];
	return result;
}

-(Fraction *) divide: (Fraction * ) f
{
	Fraction * result = [[Fraction alloc] init];
	result.numerator = numerator * f.denominator;
	result.denominator = denominator * f.numerator;

//	[result reduce];
	return result;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int tmp;

	while (v != 0)
	{
	//	NSLog(@"u=%i,v=%i", u, v);
		tmp = u % v;
		u = v;
		v = tmp;
	}

	numerator /= u;
	denominator /= u;
}
@end
