// This program determines if a year is a leap year.

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool {
		int year, rem_4, rem_100, rem_400;

		NSLog (@"Enter the year to be tested: ")
		scanf ("%i", &year);

		rem_4 = year % 4;
		rem_100 = year % 100;
		rem_400 = year % 400;

		if ( ( rem_4 == 0 && rem_100 != 0 ) || rem_400 == 0 )
			NSLog (@"It is a leap year.");
		else 
			NSLog (@"Nope, it's not a leap year.");
	}

	return 0;
}
