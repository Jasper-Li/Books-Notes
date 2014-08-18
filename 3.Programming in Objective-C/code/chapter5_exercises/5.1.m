// Program to generate and display a table of n and n^2,
// for integer values of n ranging from 1 to 10

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int n, nsquared;

		NSLog (@" n nsquared");
		NSLog (@"-- --------");

		for ( n = 1, nsquared = 0 ; n <= 10 ; n++ ) {
			nsquared = n * n;
			NSLog (@"%2i    %i", n, nsquared);
		}
	}

	return 0;
}
		

