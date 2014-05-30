#include<string.h>
#include<stdio.h>
/*
 * trim: Removeing trailing blanks, ' ', '\t', '\n'
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
void trim(char s[])
{
	int n;
	for(n = strlen(s)-1; s[n] =='\t'||s[n] =='\n' || s[n] ==' '; n--)
		;
	s[n+1] = '\0';
}

/*
 *getText: get text from stdin, ending with EOF, and store in string s, then return length.
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
int getText(char s[], int maxLength)
{
	char c;
	int i;
	
	for(i=0; --maxLength > 0 && (c=getchar()) != EOF; i++)
		s[i] = c;
	
	s[i] = '\0';

	return i;
}

int main(void)
{
#define MAX 100
	char s[MAX];
	
	printf("Input a string:\n");
	if(getText(s, MAX) < 0)
	{
		printf("Can not get text.\n");
		return -1;
	}
	
	printf("The origin is:\n%s###\n", s);
	trim(s);
	printf("The result is:\n%s###\n", s);
	return 0;
}
