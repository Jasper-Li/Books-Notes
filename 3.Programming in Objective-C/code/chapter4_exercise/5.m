// to evaluate the polynomial 
// 3x^3 - 5x^2 + 6

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
	@autoreleasepool {

	float	result = (3.31 * 10e-8 + 2.01 * 10e-7)/(7.16 * 10e-6 + 2.01 * 10e-8); 

		NSLog (@"The result is %e", result);
	}
	return 0;
}
