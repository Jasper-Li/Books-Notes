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
	if (value != 0 )
		accumulator /= value;
	else 
	{
		NSLog (@"Division by zero.");
	}
}
@end

int main (int argc, char * argv[])
{
	@autoreleasepool{
		double value1;
		char operator;
		Calculator *deskCalc = [[Calculator alloc] init];


		NSLog (@"Begin Calculations.");

		do 
		{
			NSLog (@"Type in your expression.");
			scanf ("%lf %c", &value1, &operator);


			if (operator == 'S' )
				[deskCalc setAccumulator: value1];
			else if (operator == '+')
				[deskCalc add: value1];
			else if (operator == '-')
				[deskCalc substract: value1];
			else if (operator == '*')
				[deskCalc multiply: value1];
			else if (operator == '/')
				[deskCalc divide: value1];
			else 
				NSLog (@"Unknow opeartor.");

			NSLog (@"%.2f", [deskCalc accumulator]);
		} while (operator != 'E');

	NSLog (@"End of Calculations.");
	
	}
	return 0;
}
