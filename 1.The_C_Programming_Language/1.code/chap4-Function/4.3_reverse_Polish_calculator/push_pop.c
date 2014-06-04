#include<stdio.h>

#define MAXVAL 100 //max depth of val stack
double val[MAXVAL]; // value stack
int sp = 0;	//next free stack position

//push: push f onto value statck
void push (double f)
{
	if(sp<MAXVAL)
		val[sp++] = f;
	else
		printf("%s error: stack is full.\n", __func__);
}

//pop: pop and return top vaule from stack
double pop(void)
{
	if(sp > 0)
		return val[--sp];
	else
	{
		printf("%s error: stack is empty.\n", __func__);
		return 0;
	}
}
