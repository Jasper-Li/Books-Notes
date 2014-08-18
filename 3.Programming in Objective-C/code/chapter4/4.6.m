// Implement a Calculator class

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

@implementation Calculator
{
	double accumulator;
}

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

-(void) add: (double) value
{
	accumulator += value;
}

-(void) substract: (double) value
{
	accumulator -= value;
}

-(void) multiply: (double) value
{
	accumulator *= value;
}

-(void) divide: (double) value
{
	accumulator /= value;
}
@end

int main (int argc, char * argv[])
{
	@autoreleasepool{
		Calculator *deskCalc = [[Calculator alloc] init];

		[deskCalc setAccumulator: 100.0]; // set 100
		[deskCalc add: 200]; // 100 + 200 = 300
		[deskCalc divide: 15.0]; //300/ 15 = 20
		[deskCalc substract: 10.0]; // 20 -10 = 10
		[deskCalc multiply: 5]; // 10 * 5 = 50
		NSLog (@"The result is %g",[deskCalc accumulator]);
	}
	return 0;
}
