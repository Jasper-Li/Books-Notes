#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (int) xVar andY: (int) yVar
{
	x = xVar;
	y = yVar;
}
-(void) print
{
	NSLog (@"the XYPoint is (%i, %i).", x, y);
}
@end
