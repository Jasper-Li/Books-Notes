//
// Fraction.h
// Fraction Test
//
// Created by Jasper Li 2013.05.01

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction: NSObject
{
	int numerator;
	int denominator;
}
-(void) 	print;
-(void) 	setNumerator: (int) n;
-(void)		setDenominator: (int) d;
-(int)		numerator;
-(int)		denominator;
-(double)	convertToNum;

@end
