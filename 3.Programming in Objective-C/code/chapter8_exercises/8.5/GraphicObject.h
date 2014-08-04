#import<Foundation/Foundation.h>

#ifndef GRAPHICOBJECT_CHAPTER8_EXERCISE
#define GRAPHICOBJECT_CHAPTER8_EXERCISE
@interface GraphicObject: NSObject
{
int fillColor;
BOOL filled;
int lineColor;
}
-(void) setFillColor: (int) color;
-(int) fillColor;
-(void) setFilled: (BOOL) f;
-(BOOL) filled;
-(void) setLineColor: (int) Color;
-(int) lineColor;

@end
#endif
