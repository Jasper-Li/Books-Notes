#import "XYPoint.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle *rectA=[[Rectangle alloc] init];
		Rectangle *rectB=[[Rectangle alloc] init];
		Rectangle *overLap;


		NSLog (@"print Rectangle A information");
		[rectA getRectangle];
		NSLog (@"print Rectangle B information");
		[rectB getRectangle];
		NSLog (@"rectA information:");
		[rectA printRectInfo];
		NSLog (@"rectB information:");
		[rectB printRectInfo];

		overLap = [rectA compare: rectB];
		NSLog (@"the overlapping state.");
		[overLap printRectInfo];
	}
	return 0;
} 
