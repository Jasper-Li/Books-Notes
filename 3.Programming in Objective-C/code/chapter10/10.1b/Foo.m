#import "Foo.h"

@implementation Foo

-(void) setgGlobalVar: (int) val
{
	extern int gGlobalVar;
	gGlobalVar = val;
}

@end
