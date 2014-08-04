// illustrate Dynamic typing and binding 

#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		id dataValue1,dataValue2, result;
		Fraction *f1 =[[Fraction alloc] init];
		Fraction *f2 = [[Fraction alloc] init];
		Complex *c1=[[Complex alloc] init];
		Complex *c2 = [[Complex alloc] init];

		[f1 setNumerator: 2 setDenominator: 5];
		[f2 setNumerator: 3 setDenominator: 6];

		[c1 setReal: 10.0 andImaginary: 2.5];
		[c2 setReal: 37.0 andImaginary: 34];
		// first dataValue gets a fraction

		dataValue1 = f1;
		dataValue2 = f2;
		result = [dataValue1 myAdd: dataValue2];	
	
		[dataValue1 print];
		NSLog (@"+");
		[dataValue2 print];
		NSLog (@"=");
		[result print];

		// now dataValue gets a complex number

		dataValue1 = c1;
		dataValue2 = c2;
		result = [dataValue1 myAdd: dataValue2];

		[dataValue1 print];
		
		NSLog (@"+");
		[dataValue2 print];
		NSLog (@"=");
		[result print];

	}

	return 0;
}
