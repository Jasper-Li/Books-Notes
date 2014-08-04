#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
-(Fraction *) add: (Fraction *) f
{
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c) )/ (b * d)

	Fraction * result = [[Fraction alloc] init];

	result.numerator = (self.numerator * f.denominator + self.denominator * f.numerator);
	result.denominator = self.denominator * f.denominator;
	[result reduce];

	return result;
}

-(Fraction *) sub: (Fraction *) f
{
	// To add two fractions:
	// a/b - c/d = ((a*d) - (b*c) )/ (b * d)

	Fraction * result = [[Fraction alloc] init];

	result.numerator = (self.numerator * f.denominator - self.denominator * f.numerator);
	result.denominator = self.denominator * f.denominator;
	[result reduce];

	return result;
}
-(Fraction *) mul: (Fraction *) f
{
	Fraction * result =[ [Fraction alloc] init];

	result.numerator = self.numerator * f.numerator;
	result.denominator = self.denominator * f.denominator;
	[result reduce];

	return result;
}

-(Fraction *) div: (Fraction *) f
{
	Fraction * result = [[Fraction alloc] init];

	result.numerator = self.numerator * f.denominator;
	result.denominator = self.denominator * f.numerator;

	[result reduce];

	return result;
}
-(Fraction *) invert
{
	Fraction *result = [[Fraction alloc] init];

	result.numerator = self.denominator;
	result.denominator = self.numerator;

	return result;
}
/*
-(BOOL) isEqualTo: (Fraction *)f
{
	[self reduce];
	[f reduce];
	
	if (self.numerator == f.numerator && self.denominator == f.denominator )
		return YES;
	else 
		return NO;
}*/
-(int) compare: (Fraction *) f
{
	Fraction * result ;
	
	result = [self sub: f];
	[result reduce];
//	[result print];

	if (result.numerator < 0)
		return -1;
	else if(result.numerator > 0)
		return 1;
	else
		return 0;
}
-(BOOL) isEqualTo: (id)f 
{
	Fraction * object = f;
	[self reduce];
	[object reduce];
	
	if (self.numerator == object.numerator && self.denominator == object.denominator )
		return YES;
	else 
		return NO;
}

-(BOOL) isNotEqualTo: (id)f 
{
	Fraction * object = f;
	[self reduce];
	[object reduce];
	
	if (self.numerator == object.numerator && self.denominator == object.denominator )
		return NO;
	else 
		return YES;
}
-(BOOL) isLessThanOrEqualTo: (id) object
{
	Fraction * result ;

	result = [self sub: (Fraction *)object];
	[result reduce];
	if(result.numerator <= 0)
		return YES;
	else
		return NO;
}

-(BOOL) isLessThan: (id) object
{
	Fraction * result ;

	result = [self sub: (Fraction *)object];
	[result reduce];
	if(result.numerator < 0)
		return YES;
	else
		return NO;
}

-(BOOL) isGreaterThanOrEqualTo: (id) object
{
	Fraction * result ;

	result = [self sub: (Fraction *)object];
	[result reduce];
	if(result.numerator >= 0)
		return YES;
	else
		return NO;
}

-(BOOL) isGreaterThan: (id) object
{
	Fraction * result ;

	result = [self sub: (Fraction *)object];
	[result reduce];
	if(result.numerator > 0)
		return YES;
	else
		return NO;
}

@end
