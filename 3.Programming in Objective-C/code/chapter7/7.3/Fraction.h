#import <Foundation/Foundation.h>
//define the Fraction class

@interface Fraction: NSObject

@property int numerator, denominator;

-(void) print;
-(void) setNumerator: (int) n setDenominator: (int) d;
-(double) convertToNum;
-(void) add: (Fraction *) f;

@end
