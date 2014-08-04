#import "Circle.h"
#import <math.h>

@implementation CircleObject

@synthesize radius;

-(float) circumference
{
	return 2 * M_PI * radius;
}

-(float) area
{
	return M_PI * radius * radius;
}

@end
