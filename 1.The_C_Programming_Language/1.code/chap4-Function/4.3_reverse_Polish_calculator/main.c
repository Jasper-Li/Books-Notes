#include<stdio.h>
#include<stdlib.h> // for atof()

#define MAXOP 100 // maximum size of operand or operator
#define TYPE_NUMBER '0'

int getop(char s[]);//get operand/operator into s, return the type.

void push(double d);//push or pop the stack 
double pop(void);

/*
 * Description: reverse Polish Calculator
 * Version: 1.0
 * Date: 2014.06.04
 * Author: Jasper Li
 */

int main(void)
{
	int type;
	double tmp;
	char s[MAXOP];

	while((type = getop(s)) != EOF)
	{
		switch(type)
		{
			printf("type is %c.\n", type);

			case TYPE_NUMBER:
				push(atof(s));
				break;
			
			case '+':
				push(pop() + pop());
				break;
			case '-':
				tmp = pop();
				push (pop() - tmp);
				break;
			case '*':
				push(pop() * pop());
				break;
			case '/':
				tmp=pop();
				if(tmp==0)
					push(pop()/tmp);
				else
					printf("Error: divisor is 0!!!");
				break;
			case '\n':
				printf("The result is %g.\n", pop());
				break;
			default:
				printf("Wrong input!");

		}
	}

	return 0;
}
