#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(int) perimeter
{
	return (width + height) * 2;
}

-(int) area
{
	return width * height;
}

@end
