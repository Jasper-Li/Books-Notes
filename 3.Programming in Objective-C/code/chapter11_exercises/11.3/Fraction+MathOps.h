#import"Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) invert;
//-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end

@interface Fraction (NSComparisonMethods)
-(BOOL) isEqualTo: (id) object;
-(BOOL) isLessThanOrEqualTo: (id) object;
-(BOOL) isLessThan: (id) object;
-(BOOL) isGreaterThanOrEqualTo: (id) object;
-(BOOL) isGreaterThan: (id) object;
-(BOOL) isNotEqualTo: (id) object;
-(BOOL) doesContain: (id) object;
-(BOOL) isLike: (NSString *) object;
-(BOOL) isCaseInsensitiveLike: (NSString *) object;

@end
