#import "XYPoint.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint  *myPoint = [[XYPoint alloc] init];
		XYPoint *theOrigin ;

		[myPoint setX: 100 andY: 200];

		[myRect setWidth: 5 andHeight: 8];
		myRect.origin = myPoint;

		NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height);

		NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
		printf("Area = %i, Perimeter = %i\n", [myRect area], [myRect perimeter]);

		[myPoint setX: 50 andY: 50];
	
	 	NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
		theOrigin = myRect.origin;
		theOrigin.x = 200;
		theOrigin.y = 300;
		NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin    .y);

	}
	return 0;
}
