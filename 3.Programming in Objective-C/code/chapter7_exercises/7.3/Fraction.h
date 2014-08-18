#import <Foundation/Foundation.h>
//define the Fraction class

@interface Fraction: NSObject

@property int numerator, denominator;

-(void) print: (BOOL) flagReduce;
-(void) setNumerator: (int) n setDenominator: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
@end
