#import "Fraction+MathOps.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *a = [[Fraction alloc] init];
		Fraction *b = [[Fraction alloc] init];

		int x1, x2, y1, y2;
		BOOL boolFlag;
		int compareFlag;

		NSLog (@"type 2 fractions: a/b c/d");
		scanf("%i/%i %i/%i", &x1, &y1, &x2, &y2);

		[a setNumerator: x1 setDenominator: y1 ];
		[b setNumerator: x2 setDenominator: y2];

		NSLog(@"a is ");
		[a print];
		NSLog (@"b is ");
		[b print];

		boolFlag = [a isEqualTo: b];

		NSLog (boolFlag ? @"Equal: Yes" :@"Equal: No");


		compareFlag = [a compare: b];
		NSLog (@"CompareFlag is %i", compareFlag);

	}
	return 0;
}
