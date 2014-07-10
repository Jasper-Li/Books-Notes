#include<stdio.h>

#define IN 100
#define OUT 200

int main(void)
{
	int a, b, c, m;
	a = IN;
	b = OUT;
	m = '\\';
	c =  a + b + m;
	printf("%d+%d +%c = %d\n", a, b, m, c);
}
