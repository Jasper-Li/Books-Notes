//added new category

#import "Calculator+Trig.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
	Calculator *myCalc = [[Calculator alloc] init];

	[myCalc setAccumulator: M_PI/6];
	NSLog (@" sin 30 is %lf", [myCalc sin]);

	[myCalc setAccumulator: M_PI/3];
	NSLog (@" cos 60 is %lf", [myCalc cos]);

	[myCalc setAccumulator: M_PI_4];
	NSLog (@" tan 45 is %lf", [myCalc tan]);

	}

	return 0;
}
