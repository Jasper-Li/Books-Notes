#import "Calculator.h"
int main (int argc, char * argv[])
{
	@autoreleasepool{
		double value1, value2;
		char operator;
		Calculator *deskCalc = [[Calculator alloc] init];

		NSLog (@"Type in your expression.");
		scanf ("%lf %c %lf", &value1, &operator, &value2);

		[deskCalc setAccumulator: value1];
		/*
		if (operator == '+')
			[deskCalc add: value2];
		else if (operator == '-')
			[deskCalc substract: value2];
		else if (operator == '*')
			[deskCalc multiply: value2];
		else if (operator == '/')
			[deskCalc divide: value2];
		else 
			NSLog (@"Unknow opeartor.");
			*/
		NSLog(@"oprator is %c", operator);
		switch ( operator )
		{
			case '+' :
				[deskCalc add: value2];
				break;
			case '-' :
				[deskCalc substract: value2];
				break;
			case '*' :
				[deskCalc multiply: value2];
				break;
			case '/' :
				[deskCalc divide: value2];
				break;
			default :
				NSLog (@"Unknow operator.");
				break;
		}



		NSLog (@"%.2f", [deskCalc accumulator]);
	
	}
	return 0;
}
