#import<Foundation/Foundation.h>
@interface Rectangle: NSObject

@property int width, height;
-(id) initWithWidth: (int) w andHeight: (int) h;

-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
@end
