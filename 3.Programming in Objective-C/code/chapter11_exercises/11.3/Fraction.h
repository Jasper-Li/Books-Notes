#import <Foundation/Foundation.h>
//define the Fraction class
/*
   this section has already defined in /usr/local/include/Foundation/NSScriptWhoseTests.h:31:12
@interface NSObject (NSComparisonMethods)
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
*/
@interface Fraction: NSObject

@property int numerator, denominator;

-(Fraction *) initWith: (int) n over: (int) d;
-(void) print;
-(void) setNumerator: (int) n setDenominator: (int) d;
-(double) convertToNum;
//-(Fraction *) add: (Fraction *) f;
-(void) reduce;
@end
