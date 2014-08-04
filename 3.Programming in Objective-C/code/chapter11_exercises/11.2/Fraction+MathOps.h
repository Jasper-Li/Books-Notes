#import"Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) invert;
-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end
