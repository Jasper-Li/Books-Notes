#include<stdio.h>

//my_getline: get a line text  into s, return length 
int my_getline(char s[], int max)
{
	char c;
	int i = 0;

	while(--max >0 && (c = getchar()) != EOF && c != '\n')
		s[i++] = c;

	if(c == '\n')
		s[i++] = c;
	
	s[i]= '\0';

	return i;
}
