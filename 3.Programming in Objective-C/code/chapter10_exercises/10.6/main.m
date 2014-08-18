#import <Foundation/Foundation.h>
@interface test: NSObject
@end
@implementation test 
@end
int main (int argc, char * argv[])
{
	@autoreleasepool
	{
	float f = 1.00;
	short int i = 100;
	long int l = 500L;
	double d = 15.00;

	printf("101 float : f + i = %f\n", f + i);
	printf("6.66 double: l / d = %lf\n", l / d);
	printf("1.0 float: i / l + f = %f\n", i / l + f);
	printf("50000 long: l * i = %ld\n", l * i);
	printf("0.5 float: f / 2 = %f\n", f / 2 );
	printf("6.25 double: i / (d + f) = %lf\n", i / (d + f));
	printf("0.5 float: l / (i * 2.0) = %f\n", l / (i * 2.0));
	printf("500.2 double : l + i / (double) i = %lf\n", l + i / (double) l);
	}

	return 0;
}
