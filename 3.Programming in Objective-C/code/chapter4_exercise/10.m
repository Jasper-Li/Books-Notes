// Implement a Calculator class

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
	double accumulator;
	double memory;
}
//accumulator methods
-(void)	setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) print_mem_acc;

// arithmetic methods
-(void) add: (double) value;
-(void) substract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

// memory copability  

-(double) memoryClear;	// clear memory
-(double) memoryStore;	// set memory to accumulator
-(double) memoryRecall; // set accumulator to memory
-(double) memoryAdd: (double) value;	//add value into memory
-(double) memorySubstract: (double) value; // Substract value from memory
@end

@implementation Calculator
{
	double accumulator;
	double memory;
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

-(void)  print_mem_acc
{
	NSLog (@"accumulator = %g, memory=%g.", accumulator, memory);
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

-(double) memoryClear
{
	memory = 0;
	return accumulator;
}

-(double) memoryStore // set memory t accumulator
{
	memory = accumulator;
	return accumulator;
}

-(double) memoryRecall 
{
	accumulator = memory;
	return accumulator;
}

-(double) memoryAdd: (double) value; // add value into memory
{
	memory += value;
	return accumulator;
}
-(double) memorySubstract: (double) value; // substract value from memory;
{
	memory -= value;
	return accumulator;
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
	
		[deskCalc print_mem_acc];
		
		NSLog(@"memroyStore, accumulator = %g",[deskCalc memoryStore]);
		[deskCalc print_mem_acc];

		NSLog(@"memoryAdd 5, accumulator = %g",[deskCalc memoryAdd: 5]);
		[deskCalc print_mem_acc];

		NSLog(@"memorySubstract 15, accumulator = %g", [deskCalc memorySubstract: 15]);
		[deskCalc print_mem_acc];

		NSLog(@"memoryRecall, accumulator = %g",[deskCalc memoryRecall]);
		[deskCalc print_mem_acc];

		NSLog(@"memoryClear, accumulator = %g",[deskCalc memoryClear]);
		[deskCalc print_mem_acc];
	}
	return 0;
}
