#import "Rectangle.h"

int main(int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle * myRect = [[Rectangle alloc] init];

		[myRect setWidth: 5 andHeight: 8];

		NSLog (@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
		NSLog (@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
	}
	return 0;
}
