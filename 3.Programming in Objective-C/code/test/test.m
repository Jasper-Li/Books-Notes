#import<stdio.h>
#import<Foundation/Foundation.h>
@interface Test: NSObject
@end
@implementation Test
@end

int main (int argc, char * argv[])
{
	@autoreleasepool
	{
#if 0 
		int i,j;
		for(j=0;j<10;j++)
		{
		for (i=0;i<10;i++)
		printf("、");
		printf("\n");
		}
#else 
	char str[] = "、";
	int i,num;
	num = strlen(str);
	for (i=0;i<num;i++)	
	printf("%i ",str[i]);

#endif
		
}
	return 0;
}
