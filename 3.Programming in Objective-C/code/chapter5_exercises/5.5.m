#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool{
		int n, number, triangularNumber, counter, counter_number;

		NSLog (@"Type the number of triangular numbers to be calculate.");
		scanf("%i", &counter_number);

		for ( counter = 1; counter <= counter_number; ++counter ) {
			NSLog (@"%i/%i: What triangular number do you want?", counter, counter_number);
			scanf("%i", &number);

			triangularNumber = 0;

			for ( n = 1; n<= number; ++n)
				triangularNumber += n;

			NSLog (@"Triangular number %i is %i\n", number, triangularNumber);

		}
	}

	return 0;
}
