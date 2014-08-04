#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		NSArray * myArray = [ NSArray array ];

		@try{
			[myArray objectAtIndex: 2];
		}
		@catch (NSException *exception)
		{
			NSLog(@"Caught %@ : %@", exception.name, exception.reason);
		}

		NSLog (@"Execution continues.");
	}
	return 0;
}
