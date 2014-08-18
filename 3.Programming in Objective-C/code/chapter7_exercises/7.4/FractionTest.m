// add: methods return the (Frction * ) type 
#import "Fraction.h"

int main(int argc, char * argv[])
{
	@autoreleasepool 
	{
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];
		Fraction *resultFraction;
		
		int aNume, aDeno, bNume, bDeno;
		char operation;
		BOOL reduceFlag;

		NSLog (@"type in a/b X c/d");
		scanf("%i/%i %c %i/%i", &aNume, &aDeno, &operation, &bNume, &bDeno);
		// set two fractions to 1/4 and 1/2 and add them together.
		
		NSLog (@"%i/%i %c %i/%i = ", aNume, aDeno, operation, bNume, bDeno);
		//test input
		switch (operation)
		{
			case '+':break;
			case '-':break;
			case '*':break;
			case '/':
				break;
			default:
				NSLog (@" check values: wrong operation ");
				return 1;
		}
		if( aDeno == 0 || bDeno == 0)
		{	NSLog(@"check values: wrong divisor");
			return 2;
		}

		NSLog (@"%i/%i %c %i/%i = ", aNume, aDeno, operation, bNume, bDeno);
		[aFraction setNumerator: aNume setDenominator: aDeno];
		[bFraction setNumerator: bNume setDenominator: bDeno];

		// print the result
		reduceFlag = NO ;

		[aFraction print: reduceFlag];
		switch (operation)
		{

		case '+': NSLog (@"+");break;
		case '-': NSLog (@"-");break;
		case '*': NSLog (@"*");break;
		case '/': NSLog (@"/");break;
		default: NSLog(@"wrong operation.");break;
		}

		[bFraction print: reduceFlag];
		NSLog (@"=");

		switch (operation)
		{
			case '+': 
				resultFraction = [aFraction add: bFraction];
				break;
			case '-':
				resultFraction = [aFraction subtract: bFraction];
				break;
			case '*':
				resultFraction = [aFraction multiply: bFraction];
				break;
			case '/':
				resultFraction = [bFraction divide: bFraction];
				break;
			default:
				NSLog(@"Wrong operation."); break;
		}

//		NSLog(@"no reduce");
//		[resultFraction print: NO];

		NSLog (@"with reduce.");

		reduceFlag = YES;
		[resultFraction print: reduceFlag];
	}

	return 0;
}

