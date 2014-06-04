#include<stdio.h>

/**
 * Description: print lines matching a "pattern" or a string of characters.
 * Version 1.0
 * Date: 2014.06.04
 * Author: Jasper Li
 */
#define MAXLINE 1000 //maximum input line length

int my_getline(char line[], int max);
int strIndex(char souce[], char searchFor[]);
void color_print(char s[], char p[]);

char pattern[] = "ould"; //pattern to search for

int main(void)
{
	char line[MAXLINE];
	int found = 0;

	while(my_getline(line, MAXLINE) > 0)
		if(strIndex(line, pattern) >= 0)
		{	//printf("%s", line);
			color_print(line, pattern);
			found ++;
		}
	return found;
}

//my_getline: get line into line, return length 
int my_getline(char line[], int max)
{
	char c;
	int i = 0;

	while(--max >0 && (c = getchar()) != EOF && c != '\n')
		line[i++] = c;

	if(c == '\n')
		line[i++] = c;
	
	line[i]= '\0';

	return i;
}

/* strIndex: return index of t in s, -1 for none*/
int strIndex(char s[], char t[])
{
	int i,j,k;
	
	for(i=0;s[i]!='\0';i++)
	{	for(k=i,j=0;t[j] != '\0' && s[k]==t[j];k++,j++)
			;
		if(j>0 && t[j] == '\0')
			return i;
	}

	return -1;
}

//color_print: print colorful p in s
void color_print(char s[], char p[])
{
	int i,j,k;
	for(i=0; s[i]!='\0'; i++)
	{
		for(k=i,j=0;p[j]!='\0' && s[k] == p[j]; k++,j++)
			;
		if(j>=0 && p[j] =='\0')
		{	
			printf("\033[1;32m%s\033[0m", p);
			i += j-1;
		}

		else
			printf("%c", s[i]);
	}
}
