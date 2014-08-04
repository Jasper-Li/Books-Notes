#import "Fraction.h"

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		Fraction * a,  *b;

		a = [[Fraction alloc] initWith: 1 over: 3];
		b = [[Fraction alloc] initWith: 2 over: 5];

		[a print];
		[b print];
	}
	return 0;
}
