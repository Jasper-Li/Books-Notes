#import "Square.h"

int main(int argc, char * argv[])
{
	@autoreleasepool 
	{

		Square * mySquare = [[Square alloc] initWithSide: 12];

		NSLog (@"side is %i", mySquare.side);
		NSLog (@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
	}
	return 0;
}
