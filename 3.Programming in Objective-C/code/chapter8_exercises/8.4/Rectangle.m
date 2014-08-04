#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
	XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (float) w andHeight: (float) h
{
	width = w;
	height = h;
}

-(void) setOrigin: (XYPoint *) pt
{
	origin = pt;
}

-(float) area
{
	return width * height;
}

-(float) perimeter
{
	return (width + height) * 2;
}

-(XYPoint *) origin
{
	return origin;
}
-(void) translate: (XYPoint *) pt
{
	origin.x += pt.x;
	origin.y += pt.y;
}
@end
