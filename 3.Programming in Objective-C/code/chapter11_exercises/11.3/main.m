//key word: informal protocol
//

#import "Fraction+MathOps.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *a = [[Fraction alloc] init];
		Fraction *b = [[Fraction alloc] init];

		int x1, x2, y1, y2;
		BOOL flag;

		NSLog (@"type 2 fractions: a/b c/d");
		scanf("%i/%i %i/%i", &x1, &y1, &x2, &y2);

		[a setNumerator: x1 setDenominator: y1 ];
		[b setNumerator: x2 setDenominator: y2];

		NSLog(@"a is ");
		[a print];
		NSLog (@"b is ");
		[b print];

		flag = [a isEqualTo: b];
		NSLog (flag ? @"Equal: Yes" :@"Equal: No");

		flag = [a isNotEqualTo: b];
		NSLog (flag ? @"isNotEqualTo: Yes" :@"isNotEqualTo: No");

		flag = [a isLessThan: b];
		NSLog (flag ? @"isLessThan: YES" : @"isLessThan: No");


		flag = [a isLessThanOrEqualTo: b];
		NSLog (flag ? @"isLessThanOrEqualTo: YES" : @"isLessThanOrEqualTo: No");

	
		flag = [a isGreaterThan: b];
		NSLog (flag ? @"isGreaterThan: YES" : @"isGreaterThan: No");


		flag = [a isGreaterThanOrEqualTo: b];
		NSLog (flag ? @"isGreaterThanOrEqualTo: YES" : @"isGreaterThanOrEqualTo: No");

	}
	return 0;
}
