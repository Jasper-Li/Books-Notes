//Generate a table of triangular numbers using the formula
//	trimularNumber = n (n + 1) / 2;
// Generate every fifth triangular number between 5 and 50 
// ( that is, 5, 10, 15, ..., 50).
#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool{
		int n, triangularNumber;

		triangularNumber = 0;

		NSLog (@" n triangular number");
		NSLog (@"-- -----------------");
		for ( n = 5; n <= 50; n += 5){
			triangularNumber = n * (n + 1) / 2;
			NSLog (@"%2i       %i", n, triangularNumber);
		}

	}
	return 0;
}
		
