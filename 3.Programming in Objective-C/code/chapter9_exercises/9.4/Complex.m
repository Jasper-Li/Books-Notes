// Implementation file for Complex class

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
	NSLog (@"%g + %gi ", real, imaginary);
}

-(void) setReal: (double) a andImaginary: (double) b
{
	real = a;
	imaginary = b;
}

-(id) myAdd: (id)f
{
	Complex *result = [[Complex alloc] init];
	Complex *tmp = f;

	result.real = real + tmp.real;
	result.imaginary = imaginary + tmp.imaginary;

	return result;
}
@end
