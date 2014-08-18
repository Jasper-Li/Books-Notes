// Program to reverse the digits of a number

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int number, right_digit;
		BOOL isNeg;

		NSLog (@"Enter you number.");
		scanf ("%i", &number);

		if ( number < 0 )
		{
			isNeg = 1;
			number = - number;
		}
		do {
			right_digit = number % 10;
			NSLog (@"%i", right_digit);
			number /= 10;
		}
		while ( number != 0 );

		if ( isNeg == 1 )
			NSLog (@"-");

	}

	return 0;
}
