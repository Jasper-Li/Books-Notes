#include<stdio.h>
#include"ckeys.h"
#include<string.h>
/**
 * Description: count C keywords.
 * Version: 1.0		Date: 2014.06.27
 * Author: Jasper Li
 */
char word[MAXWORDS];
struct key
{
	char * word;
	int count;
}keytab[]=
{
	"auto",0,
	"break", 0,
	"case", 0,
	"char",0,
	"const",0,
	"continue",0,
	"default", 0,
	"do", 0,
	"double",0,
	"else", 0,
	"enum", 0,
	"extern", 0,
	"float",0,
	"for", 0,
	"goto",0,
	"if",0,
	"int",0,
	"long",0,
	"register",0,
	"return",0,
	"short",0,
	"signed", 0,
	"sizeof",0,
	"static",0,
	"struct",0,
	"switch",0,
	"typedef",0,
	"union",0,
	"unsigned",0,
	"void",0,
	"volatile",0,
	"while",0
};
#if 1 
int main(void)
{
	int getword(void);
	int binSearch(char *key);
	int i;
	
	while(getword() != EOF)
	{
		if( (i=binSearch(word)) >= 0)
			keytab[i].count++;
	}
	
	for(i=0; i < sizeof(keytab)/sizeof(*keytab);i++)
		printf("%4d %s\n", keytab[i].count, keytab[i].word);
	printf("\n");

	return 0;
}

int binSearch(char *p)
{
	int low = 0;
	int	up = sizeof(keytab)/sizeof(*keytab)-1;
	int mid;
	int n;

	while(low <= up)
	{
		mid = (low + up)/2;

		if((n=strcmp(keytab[mid].word, p)) < 0)
			low = mid + 1;
		else if(n>0)
			up = mid - 1;
		else
			return mid;
	}

	return -1;
}
#else 
int main(void)
{
	while(getword() != EOF)
		printf("%s\n", word);

	return 0;
}
#endif
