#import "Fraction+MathOps.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *a = [[Fraction alloc] init];
		Fraction *b = [[Fraction alloc] init];
		Fraction * result;

		[a setNumerator: 1 setDenominator: 3];
		[b setNumerator: 2 setDenominator: 5];

		[a print];
		NSLog(@"   +");
		[b print];
		NSLog(@"-----");
		result = [a add: b];
		[result print];
		NSLog(@"\n");
		
		[a print];
		NSLog(@"   -");
		[b print];
		NSLog(@"-----");
		result = [a sub: b];
		[result print];
		NSLog(@"\n");

		[a print];
		NSLog(@"   *");
		[b print];
		NSLog(@"-----");
		result = [a mul: b];
		[result print];
		NSLog(@"\n");



		[a print];
		NSLog(@"   /");
		[b print];
		NSLog(@"-----");
		result = [a div: b];
		[result print];
		NSLog(@"\n");


		[a print];
		NSLog(@"invert");
		result = [a invert];
		[result reduce];
		[result print];
		NSLog(@"\n");
	}
	return 0;
}
