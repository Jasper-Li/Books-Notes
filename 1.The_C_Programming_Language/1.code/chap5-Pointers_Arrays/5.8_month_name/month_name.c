#include<stdio.h>

/*
 * Description: return name of n-th month
 * Date: 2014.06.23  	Version: 1.0
 * Author Jasper Li
 */
char * month_name(int n)
{
	static char *name[] = {
		"Illigal Month",
		"Janurary", "Febrary", "March","April",
		"May", "June", "July", "August",
		"September", "October", "November", "December"
	};

	return (n<1 || n > 12)? name[0] : name[n];
		
}

int main(void)
{
	int n;
//	printf("Input a month number.\n");
//	scanf("%d", &n);
	
	for(n=0;n<14;n++)
	
	printf("The month name is %s.\n", month_name(n));

	return 0;
}
