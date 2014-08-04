#import "GraphicObject.h"

@implementation GraphicObject
/*{
	int fillColor;
	BOOL filled;
	int lineColor;
}
*/
-(void) setFillColor: (int) color
{
	fillColor = color;
}
-(int) fillColor
{
	return fillColor;
}
-(void) setFilled: (BOOL) f
{
	filled = f;
}
-(BOOL) filled
{
	return filled;
}
-(void) setLineColor: (int) color
{
	lineColor = color;
}
-(int) lineColor
{
	return lineColor;
}

@end
