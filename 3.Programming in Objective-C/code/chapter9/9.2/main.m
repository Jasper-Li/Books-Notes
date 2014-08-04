// illustrate Dynamic typing and binding 

#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		id dataValue;
		Fraction *f1 =[[Fraction alloc] init];
		Complex *c1=[[Complex alloc] init];

		[f1 setNumerator: 2 setDenominator: 5];
		[c1 setReal: 10.0 andImaginary: 2.5];

		// first dataValue gets a fraction

		dataValue = f1;
		[dataValue print];

		// now dataValue gets a complex number

		dataValue = c1;
		[dataValue print];

	}

	return 0;
}
