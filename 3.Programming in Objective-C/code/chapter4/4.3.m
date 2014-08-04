//More arithmetic expressions

#import <Foundation/Foundation.h>

int main (int argc, char * argv[] )
{
	@autoreleasepool{
		int a = 25;
		int b = 2;
		float c = 25.0;
		float d = 2.0;

		NSLog (@"6 + a / 5 * b = %i", 6 + a / 5 * b);//16
		NSLog (@"a / b * b = %i", a / b * b); // 24
		NSLog (@"c / d * d = %f", c / d * d); // 25
		NSLog (@"-a = %i", -a);

	}

	return 0;
}


