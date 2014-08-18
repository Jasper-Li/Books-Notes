// A Class for Complex numbers 

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

int main (int argc, char * argv[])
{
	@autoreleasepool{
		Complex *aComplex = [[Complex alloc] init];
		Complex *bComplex = [[Complex alloc] init];
		Complex *resultComplex ;
		//set the value is 1 + 2i

		double a, b, c, d;
		NSLog (@"type in a + bi c + di");
		scanf("%lf + %lfi %lf + %lfi", &a, &b, &c, &d);

		[aComplex setReal: a];
		[aComplex setImaginary: b];

		[bComplex setReal: c];
		[bComplex setImaginary: d];

		NSLog (@" %g + %gi + %g + %gi = ", a, b, c, d);

		resultComplex = [aComplex add: bComplex];
		[resultComplex print];

	}
	return 0;
}

