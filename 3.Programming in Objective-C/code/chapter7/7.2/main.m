#import "Fraction.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction *myFraction = [[Fraction alloc] init];

		//set fraction to 1/3

//		[myFraction setNumerator: 1];
//		[myFraction setDenominator: 3];
/* version 2 dot operattion
 */
//		myFraction.numerator = 1;
//		myFraction.denominator = 3;

/* version 3 multiple argument
   */
		[myFraction setNumerator: 100 setDenominator: 300];
		//display the fraction

		NSLog (@"The value of myFraction is:%i/%i", myFraction.numerator, myFraction.denominator);
		[myFraction setNumerator: 1 setDenominator: 5];
		[myFraction print];
	}
	return 0;
}
