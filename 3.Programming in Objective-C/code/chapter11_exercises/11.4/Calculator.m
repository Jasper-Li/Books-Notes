// Implement a Calculator class

#import "Calculator.h"
@implementation Calculator

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
-(double) sin
{
	return accumulator = sin(accumulator);
}

-(double) cos 
{
	return accumulator = cos(accumulator);
}

-(double) tan 
{
	return accumulator = tan(accumulator);
}
@end
