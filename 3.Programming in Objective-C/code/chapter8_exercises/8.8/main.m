#import "XYPoint.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		Rectangle *rectA=[[Rectangle alloc] init];


		NSLog (@"print Rectangle A information");
		[rectA getRectangle];
		NSLog (@"rectA information:");
		[rectA printRectInfo];
		[rectA drawRect];
	}
	return 0;
} 
