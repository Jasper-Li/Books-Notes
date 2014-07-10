#include<stdio.h>

#define BUFSIZE 100
char buf[BUFSIZE]; // buffer for ungetch;
int bufp = 0;	// next free position in buf

// get a character, possibily a pushed-back one.
int getch(void)
{
	return bufp > 0 ? buf[--bufp]: getchar();
}

// push back charctor on input
void ungetch( int key) 
{
	if(bufp < BUFSIZE)
		buf[bufp++] = key;
	else
		printf("%s: too many charactors.\n", __func__);
}
