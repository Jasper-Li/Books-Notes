#include<stdio.h>

extern int lines;
// sort text by lines.

void qsort(char *s[], int left, int right);
void sort(char *s[])
{
	qsort(s, 0, lines -1);
}


void swap(char *s[], int sa, int sb);
void qsort(char *s[], int left, int right)
{
	int last, i;

	if(left >= right)
		return;
	
	swap(s, left, (left+right)/2);
	last = left;

	for(i=left+1; i<= right; i++)
		if(strcmp(s[i],s[left]) < 0)
			swap(s, i, ++last);

	swap(s, left, last);
	qsort(s, left, last - 1);
	qsort(s, last+1, right);
}

void swap(char *s[], int sa, int sb)
{
	if(sa != sb)
	{
		char *tmp;
		tmp = s[sa];
		s[sa] = s[sb];
		s[sb] = tmp;
	}
}
