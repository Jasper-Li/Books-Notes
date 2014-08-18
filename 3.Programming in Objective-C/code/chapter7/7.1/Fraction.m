// Fraction.m
// FractionTest
//
// Created by Jasper Li on 2013.05.01

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

/*{
	int numerator;
	int denominator;
}
*/
-(void) print
{
	NSLog (@"%i/%i", numerator, denominator);
}
/*
-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d;
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
*/
//@synthesize numerator, denominator;

-(double) convertToNum
{
	if (denominator != 0)
		return (double) numerator  / denominator;
	else 
		return NAN;
}
@end
