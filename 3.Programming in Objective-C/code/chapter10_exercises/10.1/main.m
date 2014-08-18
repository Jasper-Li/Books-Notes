// using the Rectangle class 
// add an initializeer method according to the following declaration.

#import "Rectangle.h"

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		Rectangle * myRect = [[Rectangle alloc] initWithWidth: 3 andHeight: 5];

		NSLog (@"area is %i, perimeter is %i",[myRect area], [myRect perimeter]);
	}
	return 0;
}
