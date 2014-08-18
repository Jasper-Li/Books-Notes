// illustrate Dynamic typing and binding 

#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[])
{
	@autoreleasepool 
	{

		Fraction *fraction = [[Fraction alloc] init];
		Complex * complex = [[Complex alloc] init];
		id 	number = [[Complex alloc] init];

		if ( [fraction isMemberOfClass: [Complex class]] == YES )
			NSLog (@"fraction isMemberOfClass Complex : YES");
		if ( [complex isMemberOfClass: [NSObject class]] == YES)
			NSLog (@"complex isMemberOfClass NSObject: YES");
		if( [complex isKindOfClass: [NSObject class]] == YES )
			NSLog (@"complex isKindOf NSObject: YES");
		if( [fraction isKindOfClass: [Fraction class]] == YES)
			NSLog (@"fraction isKindOfClass Fraction");
		if( [fraction respondsToSelector: @selector(print)] == YES )
			NSLog (@"fraction respondsToSelector print: YES");
		if( [complex respondsToSelector: @selector(print)] == YES )
			NSLog (@"complex respondsToSelector print: YES");
		if( [Fraction instancesRespondToSelector: @selector (print)] == YES )
			NSLog (@"Fraction class instancesRespondToSelector print: YES");
		if( [number respondsToSelector: @selector (print)] == YES)
			NSLog (@"number respondsToSelector print: YES");
		if( [number isKindOfClass: [Complex class]] == YES)
			NSLog (@"number isKindOfClass Complex: YES");
		if( [[number class] respondsToSelector: @selector (alloc)] == YES)
			NSLog (@"nubmer class repsondsToSelecor alloc: YES");


	}

	return 0;
}
