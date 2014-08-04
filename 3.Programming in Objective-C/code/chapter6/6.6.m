// Program to implement the sign function

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int number, sign;

		NSLog (@"Please type in a number: ");
		scanf ("%i", &number);

		if ( number < 0 )
			sign = -1;
		else if ( number == 0 )
			sign = 0;
		else 
			sign = 1;

		NSLog (@"Sing = %i", sign);
	}
	return 0;
}

