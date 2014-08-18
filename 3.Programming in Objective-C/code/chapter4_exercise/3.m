#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
	@autoreleasepool{
		char c, d;

		c = 'd';
		d = c;

		NSLog (@"d = %c", d);
	}
	return 0;
}
