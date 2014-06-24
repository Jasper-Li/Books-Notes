#include<stdio.h>
#include<stdlib.h>

int main(void)
{
	char s[100]="";
	scanf("%s",s);

	printf(":%lf.\n", atof(s));

	return 0;
}
