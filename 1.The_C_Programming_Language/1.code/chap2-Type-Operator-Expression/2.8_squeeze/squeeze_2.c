#include<stdio.h>

/**
 * remove all occurence of charactor c in string s.
 * Version 2.0
 * Date 20140529
 * Author Jasper Li
 */
void squeeze(char s[], char c)
{
	int i, j;
	
	for(i=j=0; s[i] != '\0';i++)
/*		if(s[i] == c)
			continue;
		else
			s[j++] = s[i];
*/
		if(s[i] != c)
			s[j++] = s[i];

	s[j] = s[i];
}

int main(void)
{
	char s[100];
	char c;

	printf("Input a string:\n");
	scanf("%s", s);

	printf("Input a char:\n");
	scanf(" %c", &c);

	squeeze(s, c);
	printf("the result is:\n%s\n", s);

	return 0;
}

