#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int n, number, triangularNumber;

		NSLog (@"What triangular number do you want?");
		scanf("%i", &number);

		triangularNumber = 0;

//		for ( n = 1; n <= number; ++n)
//			triangularNumber += n;

		n = 1;
		while ( n <= number )
		{
			triangularNumber += n;
			n++;
		}

		NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
	}
	return 0;
}
