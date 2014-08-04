// Overidding Methods

#import <Foundation/Foundation.h>

//ClassA declaration and defination

@interface ClassA: NSObject
{
	int x; // will be inherited by subclasses

}

-(void) initVar;
-(void) printVar;
@end

@implementation ClassA
-(void) initVar
{
	x = 100;
}
-(void) printVar
{
	NSLog (@"x = %i", x);
}

@end 

// ClassB declaration and defination

@interface ClassB: ClassA
-(void) initVar;
-(void) printVar;
@end

@implementation ClassB 
-(void) initVar //added method
{
	x = 200;
}

-(void) printVar
{
	NSLog (@"x = %i", x);
}

@end

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{
		ClassA *a = [[ClassA alloc] init];
		ClassB * b= [[ClassB alloc] init];


		[a initVar];
		[a printVar];

		[b initVar]; //uses overidding method in B;

		[b printVar]; //reveal value of x
	}

	return 0;
}


