#import "XYPoint.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle *myRect = [[Rectangle alloc] init];
		XYPoint  *myPoint = [[XYPoint alloc] init];
		XYPoint *theOrigin ;
		int x, y;

		[myPoint setX: 100 andY: 200];

		[myRect setWidth: 5 andHeight: 8];
		myRect.origin = myPoint;

		NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height);

		NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
		NSLog(@"Area = %i, Perimeter = %i\n", [myRect area], [myRect perimeter]);

		NSLog(@"Type an XYPoint : X,Y");
		scanf("%i,%i",&x, &y);
		myPoint.x = x;
		myPoint.y = y;
		NSLog(@"Cotains the Point ? %i", [myRect containsPoint: myPoint]);
	}
	return 0;
}
