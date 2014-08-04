// to evaluate the polynomial 
// 3x^3 - 5x^2 + 6

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
	@autoreleasepool {
		float x = 2.55, result;

		result = 3 * x * x * x - 5 * x *x + 6;

		NSLog (@"3x^3 - 5x^2 + 6 is %f", result);
	}
	return 0;
}
