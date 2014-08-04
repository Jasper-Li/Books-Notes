#import "Circle.h"
#import "Triangle.h"
#import "Rectangle.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		CircleObject * myCircle = [[CircleObject alloc] init];
		Rectangle * myRectangle = [[Rectangle alloc] init];
		Triangle * myTriangle = [[Triangle alloc] init];

		[myRectangle setWidth: 2];
		[myRectangle setHeight: 5];
		NSLog (@"myRectangle width = %i, height = %i, perimeter = %i, area = %i",myRectangle.width, myRectangle.height, [myRectangle perimeter], [myRectangle area]);

		myCircle.radius = 10;
		NSLog(@"myCircle radius = %f, circumference = %f, area = %f", myCircle.radius, [myCircle circumference], [myCircle area]);

		myTriangle.edgeA = 3;
		myTriangle.edgeB = 4;
		myTriangle.edgeC = 5;
		
		NSLog (@"myTriangle edgeA = %g, edgeB = %g, edgeC =%g, perimeter = %g, area = %g", myTriangle.edgeA, myTriangle.edgeB, myTriangle.edgeC, [myTriangle perimeter], [myTriangle area]);
	}

	return 0;
}
