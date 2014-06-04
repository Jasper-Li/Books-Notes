#include<stdio.h>
//atof: convert a string to double
double atof(char s[])
{
	int i, sign, power;
	double sum;
	
	//skip white space
	for(i=0;isspace(s[i]); i++)
		;
	
	// test sign
	sign = s[i] =='-' ? -1: 1;
	if(s[i]=='-' || s[i] =='+')
		i++;

	for(sum=0;isdigit(s[i]);i++)
		sum = sum * 10 + s[i] - '0';

	power = 1; // for digit section
	if(s[i] == '.')
	{
		i++;
		for(;isdigit(s[i]);i++,power *= 10)
			sum = sum*10 + s[i] - '0';

	}

	return sign * sum / power;
}
		

int main(void)
{
#define MAX 100
	char string[MAX];
	scanf("%s", string);

	printf("The double fomat is %lf.\n",atof(string));

	return 0;
}
