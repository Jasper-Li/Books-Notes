#import <Foundation/Foundation.h>

//Program to calculate the eight trianular number

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int triangularNumber;

		triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;

		NSLog (@"The eight triangular number is %i",triangularNumber);
	}

	return 0;
}
