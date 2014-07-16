#include<stdio.h>
int main(void)
{
	FILE  *fp = stdin ;
	int n;
	char ch;

	while((n=fread(&ch, 1, 1, fp)) != NULL)
		printf("%c", ch);


	return 0;
}
	
