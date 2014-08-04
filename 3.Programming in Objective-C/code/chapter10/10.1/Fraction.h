#import <Foundation/Foundation.h>
//define the Fraction class

@interface Fraction: NSObject

@property int numerator, denominator;

-(Fraction *) initWith: (int) n over: (int) d;
-(void) print;
-(void) setNumerator: (int) n setDenominator: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;
@end
