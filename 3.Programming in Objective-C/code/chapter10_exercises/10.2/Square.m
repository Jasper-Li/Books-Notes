#import "Square.h"

@implementation Square: Rectangle
-(id) initWithSide: (int) s
{
	self =  [super init];
	if (self )
	{
		
		[self setSide: s];
	}

	return self;

}

-(void) setSide: (int) s
{
	[self setWidth: s andHeight: s];
}

-(int) side
{
	return self.width;
}

@end
