// Create a calss called Rectangle, return area and perimeter

#import <Foundation/Foundation.h>

//---- interface section ----

@interface Rectangle: NSObject
{
	int width;
	int height;
}
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

//---- implementation section ----

@implementation Rectangle

{
	int width;
	int height;
}

-(void) setWidth: (int) w
{
	width = w;
}

-(void) setHeight: (int) h
{
	height = h;
}

-(int) width
{
	return width;
}
-(int) height
{
	return height;
}
-(int) area
{
	return height * width;
}
-(int) perimeter
{
	return 2 * (height + width);
}

@end

int main (int argc, char * argv[])
{
	@autoreleasepool{
		Rectangle * myRectangle = [[Rectangle alloc] init];

		[myRectangle setWidth: 2];
		[myRectangle setHeight: 5];
		
		NSLog(@"The paramenter of myRectangle is");
		NSLog(@"Width: %i",[myRectangle width]);
		NSLog(@"Height: %i",[myRectangle height]);
		NSLog(@"area: %i",[myRectangle area]);
		NSLog(@"perimeter: %i",[myRectangle perimeter]);
	}
	return 0;
}
