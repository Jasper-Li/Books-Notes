#import "Fraction.h"

int main (int argc, char ** argv[] )
{
	@autoreleasepool 
	{
		Fraction * f = [[ Fraction alloc] init];

		[f noSuchMethod];

		NSLog (@"Execution continues!");
	}
	return 0;
}

