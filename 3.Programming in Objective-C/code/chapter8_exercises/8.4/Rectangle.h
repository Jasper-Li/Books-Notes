#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle: NSObject

@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
-(void) translate: (XYPoint *) pt;

@end
