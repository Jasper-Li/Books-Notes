#import "Triangle.h"
#import <math.h>

@implementation Triangle

@synthesize edgeA, edgeB, edgeC;

-(float) perimeter
{
	return edgeA + edgeB + edgeC;
}

-(float) area
{
	float s = ( edgeA + edgeB + edgeC) / 2;
	return sqrt( s * ( s - edgeA) * ( s- edgeB ) * (s - edgeC ) );
}

@end
