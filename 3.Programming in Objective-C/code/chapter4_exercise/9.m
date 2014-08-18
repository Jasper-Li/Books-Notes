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
-(double) add: (double) value;
-(double) substract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign; // change sign th accumulator
-(double) reciprocal; // 1 / accumultor
-(double) xSquared;  // accumulator squared 
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

-(double) add: (double) value
{
	accumulator += value;
	return accumulator;
}

-(double) substract: (double) value
{
	accumulator -= value;
	return accumulator;
}

-(double) multiply: (double) value
{
	accumulator *= value;
	return accumulator;
}

-(double) divide: (double) value
{
	accumulator /= value;
	return accumulator;
}

-(double) changeSign
{
	accumulator = -accumulator;
	return accumulator;
}

-(double) reciprocal
{
	accumulator = 1 / accumulator;
	return accumulator;
}

-(double) xSquared
{
	accumulator *= accumulator;
	return accumulator;
}
	
@end

int main (int argc, char * argv[])
{
	@autoreleasepool{
		Calculator *deskCalc = [[Calculator alloc] init];

		NSLog(@"accumulator is %g", [deskCalc accumulator]);
		[deskCalc setAccumulator: 100.0];
		NSLog(@"set 100.0, accumulator = %g", [deskCalc accumulator]); // set 100
		NSLog(@"add 200, accumulator = %g", [deskCalc add: 200]); // 100 + 200 = 300
		NSLog(@"divided by 15, accumulator = %g", [deskCalc divide: 15.0]); //300/ 15 = 20
		NSLog(@"substructe 10, accumulator = %g", [deskCalc substract: 10.0]); // 20 -10 = 10
		NSLog(@"multiply 5, accumulator = %g", [deskCalc multiply: 5]); // 10 * 5 = 50
		NSLog(@"changSign, accumulator = %g", [deskCalc changeSign]);
		NSLog(@"reciprocal, accumulator = %g", [deskCalc reciprocal]);
		NSLog(@"xSquared, accumulator = %g", [deskCalc xSquared]);
		NSLog (@"The result is %g",[deskCalc accumulator]);
	}
	return 0;
}
