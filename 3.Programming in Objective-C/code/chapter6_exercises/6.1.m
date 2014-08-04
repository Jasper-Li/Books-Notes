// Type in 2 integer values.
// Test to determin whether the first is evenly divisible by the second 
// and display the message.

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		int a, b;

		NSLog (@"Type in 2 integers.");
		scanf ("%i %i", &a, &b);

		if( b == 0 )
			NSLog (@"Wrong input.");
		else if ( a % b == 0 )
			NSLog (@" %i is divisible by %i", a, b);
		else
			NSLog (@" %i is not divisible by %i", a, b);
	}
	return 0;

}	
