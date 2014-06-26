#include<stdio.h>
#include<string.h>
#include"dcl.h"
/**
 * Description: Convert a chain of word expressions of C declaration into format of C Language.
 * Version: 1.0 	Date: 2014.06.26 		
 * Author: Jasper Li
 */


int gettoken(void);

int tokentype;
char token[MAXLENGTH];
char dscp[MAXLENGTH];
char name[MAXLENGTH];
char type[MAXLENGTH];

int main(void)
{


	char tmp[MAXLENGTH];
	if ((tokentype = gettoken()) != NAME)
	{
		printf("Wront input: First token is not a NAME.\n");
		return 1;
	}
	
	// first element is the name, while the last element must be the name and '\n'
	strcpy(name, token);
	strcpy(dscp, name);

	while( (tokentype = gettoken()) != NAME)
	{
		switch(tokentype)
		{
			case PARENS:
			case BRACKETS:
				strcat(dscp, token);
				break;
			case '*':
				sprintf(tmp, "(*%s)", dscp);
				strcpy(dscp, tmp);
				break;
			default:
				printf("Wrong input: unknow inputs\n");
				return 2;
				
		}
	}

	//the second NAME if the type.
	strcpy(type, token);

	printf("%s: %s %s.\n", name, type, dscp);
	return 0;
}
