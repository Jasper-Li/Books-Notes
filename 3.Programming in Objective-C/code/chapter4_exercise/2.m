// Convert 27 from degrees Fahrenheit (F) th degrees Celsius (C) using the following formula: C = (F - 32) / 1.8

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool{
		int F = 27;

		NSLog (@" 27 F is %f C", (F - 32) / 1.8);// -5/1.8
	}
	return 0;
}
