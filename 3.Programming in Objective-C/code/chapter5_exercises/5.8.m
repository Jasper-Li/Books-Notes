// Calculate the sum of the digits of an integer

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool{
		int integer, sum;

		NSLog (@"Type the integer.");
		scanf("%i", &integer);

		sum = 0;

		do{
			sum += integer % 10;
			integer /= 10;
		}while (integer != 0);

		NSLog (@"the result is %i", sum);
	}
	return 0;
}
