// Program to reverse the digits of a number

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool{
		int number, right_digit;
		int new;

		NSLog (@"Enter your number.");
		scanf ("%i", & number);

		while ( number != 0) 
		{
			right_digit = number % 10;
			NSLog (@"%i", right_digit);
			number /= 10;

			new = new * 10 + right_digit;
		}

		NSLog (@"%i",new);

	}

	return 0;
}

