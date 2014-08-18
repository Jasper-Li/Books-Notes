// Program to generate a table of prime numbers
// second version using BOOL type and predefined values

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int p, d;
		BOOL isPrime;

		for ( p = 2; p <= 50; p++ ) {
			isPrime = YES;

			for ( d = 2; d <= p/2; d++ )
				if ( p %d == 0 )
				{
					isPrime = NO;
					break;
				}

			if ( isPrime == YES )
				NSLog (@"%i ", p);
		}
	}
	return 0;
}
			

