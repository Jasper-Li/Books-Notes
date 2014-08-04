#import "Rectangle.h"
int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		id dataValue = [[Rectangle alloc] init];

		[dataValue setWidth: 2 andHeight: 5];

		NSLog (@"area is %i, perimeter is %i", [dataValue area], [dataValue perimeter] );
	
	}
	return 0;
}
