// Program to generate and print a table of the first 10 factorials

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
	@autoreleasepool {

	int n, factorialNumber;

	NSLog (@" n  factorial number");
	NSLog (@"--- ----------------");

	for ( n = 1; n <= 10; n++ ) {
		factorialNumber = 1;	
		for(int i = 1; i <= n; i++ )
			factorialNumber *= i;

		NSLog (@"%2i!      %i", n, factorialNumber);
	}

	}
	return 0;
}
