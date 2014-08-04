#import"Square.h"
@implementation Square
{
	Rectangle * rect;
}

-(Square *) init
{
	self = [super init];
	rect = [[Rectangle alloc]  init];
	return self;
}
-(Square *) initWithSide: (int) s
{
	[self init];
	[self setSide: s];
	return self;
}
-(void) setSide: (int) s
{
	[rect setWidth: s andHeight: s];
}
-(int)side
{
	return rect.width;
}
-(int) area
{
	return [rect area];
}
-(int) perimeter
{
	return [rect perimeter];
}
@end
