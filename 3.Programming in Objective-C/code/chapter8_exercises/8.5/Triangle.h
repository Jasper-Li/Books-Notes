#import "GraphicObject.h"

@interface Triangle: GraphicObject

@property float edgeA, edgeB, edgeC;

-(float) perimeter;
-(float) area;

@end
