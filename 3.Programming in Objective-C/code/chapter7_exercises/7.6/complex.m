#import "complex.h"
@implementation Complex
{
	double real;
	double imaginary;
}
-(void) setReal: (double) a
{
	real = a;
}
-(void) setImaginary: (double) b
{
	imaginary = b;
}
-(void) print
{
	NSLog(@"%g + %gi", real, imaginary);
}
-(double) real
{
	return real;
}
-(double) imaginary
{
	return imaginary;
}
-(Complex *) add: (Complex *) ComplexNum
{
	Complex *sumComplex = [[Complex alloc] init];

	sumComplex.real = real + ComplexNum.real;
	sumComplex.imaginary = imaginary  + ComplexNum.imaginary;

	return sumComplex;
}
@end
