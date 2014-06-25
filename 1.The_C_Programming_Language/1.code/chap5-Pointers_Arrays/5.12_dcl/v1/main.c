#include<stdio.h>
#include<string.h>
#include"dcl.h"
/**
 * Description: Convert a C declaration into word expressing.
 * Version: 1.0 	Date: 2014.06.25 		
 * Author: Jasper Li
 */

void dcl(void);
void dirdcl(void);

int gettoken(void);

int tokentype;
char token[MAXLENGTH];
char dscp[MAXLENGTH];
char name[MAXLENGTH];
char type[MAXLENGTH];

int main(void)
{
	
	if ((tokentype = gettoken()) != NAME)
	{
		printf("Wront input: First token is not a NAME.\n");
		return 1;
	}
	else
	{
		// first element is the type
		strcpy(type, token);
		
		dcl();

		printf("%s: %s %s\n", name, dscp, type);

	}

	return 0;
}
