// typedef enumerated data types., define a type called Day with the possilbe values Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday.

#import <Foundation/Foundation.h>
int main (int argc, char * argv [])
{
	@autoreleasepool
	{
		enum week {
			Sunday = 0,
			Monday,
			Tuesday,
			Wednesday,
			Thursday,
			Friday,
			Saturday
		};

		typedef enum week Day;
		
		Day myDay;
		int test = -1;
		
		for (test = -1; test < 9; test ++ )
		{
			myDay = test;
			
			switch (myDay)
			{
			case Sunday:
			case Monday:
			case Tuesday:
			case Wednesday:
			case Thursday:
			case Friday:
			case Saturday:
				   NSLog (@"%i, %i", test, myDay); break;
			default:
				   NSLog (@"%i wrong input.",test );
				   
			}
		}
	}
	return 0;
}
