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

		NSLog (@"type in a/b X c/d");
		scanf("%i/%i %c %i/%i", &aNume, &aDeno, &operation, &bNume, &bDeno);
		// set two fractions to 1/4 and 1/2 and add them together.
		
		NSLog (@"%i/%i %c %i/%i = ", aNume, aDeno, operation, bNume, bDeno);
		[aFraction setNumerator: aNume setDenominator: aDeno];
		[bFraction setNumerator: bNume setDenominator: bDeno];

		// print the result
/*
		[aFraction print];
		switch (operation)
		{

		case '+': NSLog (@"+");break;
		case '-': NSLog (@"-");break;
		case '*': NSLog (@"*");break;
		case '/': NSLog (@"/");break;
		default: NSLog(@"wrong operation.");break;
		}

		[bFraction print];
		NSLog (@"=");
*/
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

		[resultFraction print];
	}

	return 0;
}

