// Program to set and get XYPoint individually

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface XYPoint: NSObject

{
	int x_value;
	int y_value;
}
-(void) setX: (int) x;
-(void) setY: (int) y;
-(int) getX;
-(int) getY;

@end

//---- @implementation section ----

@implementation XYPoint 

{
	int x_value;
	int y_value;
}

-(void) setX: (int) x
{
	x_value = x;
}

-(void) setY: (int) y
{
	y_value = y;
}

-(int) getX
{
	return x_value;
}

-(int) getY
{
	return y_value;
}

@end

//---- program section ----

int main (int argc, char * argv[])
{
	@autoreleasepool{
		XYPoint *myXYPoint = [[XYPoint alloc] init];

		//set XYPoint to 25,30
		[myXYPoint setX: 25];
		[myXYPoint setY: 30];
		
		//Display the XYPoint value

		NSLog(@"The value of XYPoint is %i,%i",[myXYPoint getX],[myXYPoint getY]);
	}

	return 0;
}
		
	
