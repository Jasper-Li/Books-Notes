#import "complex.h"
int main (int argc, char * argv[])
{
	@autoreleasepool{
		Complex *aComplex = [[Complex alloc] init];
		Complex *bComplex = [[Complex alloc] init];
		Complex *resultComplex ;
		//set the value is 1 + 2i

		double a, b, c, d;
		NSLog (@"type in a + bi c + di");
		scanf("%lf + %lfi %lf + %lfi", &a, &b, &c, &d);

		[aComplex setReal: a];
		[aComplex setImaginary: b];

		[bComplex setReal: c];
		[bComplex setImaginary: d];

		NSLog (@" %g + %gi + %g + %gi = ", a, b, c, d);

		resultComplex = [aComplex add: bComplex];
		[resultComplex print];

	}
	return 0;
}
