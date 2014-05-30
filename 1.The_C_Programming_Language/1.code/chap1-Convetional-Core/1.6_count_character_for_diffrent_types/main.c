/**
 * Count the number of occurence of the blow
 * 1. every digit: 0, 1, 2, ..., 9
 * 2. white space: ' ', '\t', '\n'
 * 3. other characters
 *
 * Test :
 * count occrence of the string XXX in vi command line
 * :%s/XXX/&/gn
 *
 * Date 20140529
 * Version 1.0
 * Author Jasper Li
 */
#include<stdio.h>
int main(void)
{
	int digitNumber[10], whiteNumber, otherNumber;
	char c;
	int i;
	int sum=0; // for test 

	//initial
	for(i=0;i<10;i++)
		digitNumber[i]=0;

	whiteNumber = otherNumber = 0;

	while((c=getchar()) != EOF)
	{
		if(c >= '0' && c <= '9')
			digitNumber[c-'0']++ ;
		else if( c == ' ' || c == '\t' || c == '\n')
			whiteNumber ++;
		else
			otherNumber ++;
	}

	for(i=0; i<10; i++)
	{
		printf("%d: %d.\n", i, digitNumber[i]);
		sum += digitNumber[i];
	}
	sum += whiteNumber + otherNumber;
	printf("white: %d.\nother: %d.\n", whiteNumber, otherNumber);
	printf("sum: %d\n", sum);

	return 0;
}

