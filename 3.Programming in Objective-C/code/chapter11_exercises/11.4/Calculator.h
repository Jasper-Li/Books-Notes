
#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
	double accumulator;
}
//accumulator methods
-(void)	setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(void) add: (double) value;
-(void) substract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end
