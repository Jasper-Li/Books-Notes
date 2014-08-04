// in : integer 
// out : display the integer as numbers.
// in : 932
// out : 
//	nine
// 	three
//	two

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		unsigned long int integer, convertInteger, tmp, integer_tmp;

		NSLog (@"Type in an integer.");
		scanf ("%li", &integer);

		NSLog (@"integer = %li", integer);
		integer_tmp = integer;
		do 
		{
			tmp = integer_tmp % 10;
			convertInteger = convertInteger * 10 + tmp;
			integer_tmp /= 10;
		}while (integer_tmp != 0);
		
		NSLog (@"convertInteger = %li",convertInteger);
		integer_tmp = convertInteger;
		do 
		{
			tmp = integer_tmp % 10;
			switch (tmp)
			{
				case 0: NSLog (@"zero"); break;
				case 1: NSLog (@"one"); break;
				case 2: NSLog (@"two"); break;
				case 3: NSLog (@"three"); break;
				case 4: NSLog (@"four"); break;
				case 5: NSLog (@"five"); break;
				case 6: NSLog (@"six"); break;
				case 7: NSLog (@"seven"); break;
				case 8: NSLog (@"eight"); break;
				case 9: NSLog (@"nine"); break;
				default : NSLog (@"wrong input."); break;
			}

			integer_tmp /= 10;
		}while (integer_tmp != 0 );

		if (integer % 10 == 0 && integer != 0 )
			NSLog (@"zero");
		NSLog (@"end");
	}
	return  0;
}
		
