#import "Foo.h"

int gGlobalVar = 5;

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		Foo *myFoo = [[Foo alloc] init];
		NSLog (@"%i", gGlobalVar);

		[myFoo setgGlobalVar: 100];

		NSLog (@"%i", gGlobalVar);
	}
	return 0;
}

