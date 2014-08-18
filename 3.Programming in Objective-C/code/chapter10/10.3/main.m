// enumerated data type
#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
		enum month  { 
			janurary = 1,
			february,
			march,
			april,
			may,
			june,
			july,
			august,
			september,
			october,
			november,
			december
		};

		enum month amonth;
		int days;

		int i;
	for(i=0;i<14;i++)
	{
	//	NSLog (@"Enter month number.");
	//	scanf("%i", &amonth);
	amonth = i;
	
		switch (amonth)
		{
			case janurary:
			case march:
			case may:
			case july:
			case august:
			case october:
			case december:
				days = 31;
				break;

			case april:
			case june:
			case september:
			case november:
				days = 30;
				break;
			case february:
				days = 28;
				break;
			default:
				NSLog (@"bad month number %i ", amonth);
				days = 0;
				break;
		}

	//	if (days !=0 )
			NSLog (@"Number of month %i is %i", amonth, days);

		if (amonth == february)
			NSLog (@"...or 29 if it is a leep year.");
	}
	}
	return 0;
}


