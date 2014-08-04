#import "Square.h"

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		Square *mySquare = [[Square alloc] init];

		[mySquare setSide: 5];

		NSLog(@"mySquare side: %i area: %i perimeter: %i", [mySquare side], [mySquare area], [mySquare perimeter]);
	}

	return 0;
}

