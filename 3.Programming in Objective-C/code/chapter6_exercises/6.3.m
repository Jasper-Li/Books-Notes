#import <Foundation/Foundation.h>

@interface Fraction: NSObject
{
	int numerator;
	int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end

@implementation Fraction
{
	int numerator;
	int denominator;
}

-(void) print
{
	if ( denominator == 0 )
		NSLog (@"wrong input.");
	else if ( numerator == 0 )
		NSLog (@"0");
	else if ( numerator % denominator == 0 )
		NSLog (@"%i", numerator / denominator);
	else
		NSLog (@" %i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
}
-(double) convertToNum
{
	if (denominator != 0)
		return (double) numerator / denominator;
	else
		return NAN;
}
@end

int main (int argc, char * argv[])
{
	@autoreleasepool {
		Fraction *aFraction = [[Fraction alloc] init];
		int nume, deno;

		NSLog (@"Type in numerator and denominator.");
		scanf ("%i %i", &nume, &deno);


		[aFraction setNumerator: nume]; // 1st fraction is 1/4
		[aFraction setDenominator: deno];

		[aFraction print];
	}
	return 0;
}
