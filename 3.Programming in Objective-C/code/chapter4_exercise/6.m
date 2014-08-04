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
@end

int main (int argc, char * argv[])
{
	@autoreleasepool{
		Complex *myComplex = [[Complex alloc] init];

		//set the value is 1 + 2i
		[myComplex setReal: 1];
		[myComplex setImaginary: 2];
		
		NSLog(@"The complex value is (by print)");
		[myComplex print];

		NSLog(@"The complex value is %g + %gi (by method)",[myComplex real], [myComplex imaginary]);
	}
	return 0;
}

