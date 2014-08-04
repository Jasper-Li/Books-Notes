#import "XYPoint.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		XYPoint * myXypoint = [[XYPoint alloc] init];
		id dataValue;

		[myXypoint setX: 1 andY: 10];

		dataValue = myXypoint ;

		[dataValue print];
	}

	return 0;
}
