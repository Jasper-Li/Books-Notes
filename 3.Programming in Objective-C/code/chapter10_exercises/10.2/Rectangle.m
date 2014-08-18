#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;
-(id) initWithWidth: (int) w andHeight: (int) h
{
	self = [super init];
	if (self)
	{
		width = w;
		height = h;
	}
	return self;
}
-(void) setWidth: (int) w andHeight:(int) h
{
	width = w;
	height = h;
}

-(int) area
{
	return width * height;
}

-(int) perimeter
{
	return (width + height) * 2;
}
@end
