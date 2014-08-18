// change the vaule to float.
#import "XYPoint.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint  *myPoint = [[XYPoint alloc] init];
		XYPoint *sector = [[XYPoint alloc] init];


		[myPoint setX: 100 andY: 200];
		[sector setX: 5   andY: 15];

		[myRect setWidth: 5 andHeight: 8];
		myRect.origin = myPoint;

		NSLog (@"Rectangle w = %f, h = %f", myRect.width, myRect.height);

		NSLog (@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
		NSLog(@"Area = %f, Perimeter = %f", [myRect area], [myRect perimeter]);
		[myRect translate: sector];

		NSLog (@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
	}
	return 0;
}
