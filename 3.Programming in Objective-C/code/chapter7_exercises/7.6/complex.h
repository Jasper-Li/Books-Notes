#import <Foundation/Foundation.h>

@interface Complex: NSObject
{
	double real;
	double imaginary;
}
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;	//display as a + bi
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *) ComplexNum;
@end
