#include<stdio.h>
#include<string.h>
#include"dcl.h"

/* Description: Analyze the declaration with * for zero or more.
 * Version: 2.0		Date: 2014.06.25
 * Author: Jasper Li
 */
extern int tokentype;
extern char token[MAXLENGTH];
extern char dscp[MAXLENGTH];
extern char name[MAXLENGTH];
extern char type[MAXLENGTH];

void dcl(void)
{
	void dirdcl(void);

	int n;
	
	for(n=0; (tokentype=gettoken()) == '*'; n++)
		;

	dirdcl();
	
	while(n--)
		strcat(dscp, "pointer to ");

}

void dirdcl(void)
{
	int type;

	if (tokentype == NAME)
	{
		if(*name == '\0')
			strcpy(name, token);
		else
			printf("Wrong input: more than 1 names.\n");

	}
	else if(tokentype == '(')
	{

		dcl();

		if(tokentype != ')')
			printf("Wrong input: missing pair of ().\n");
		
	} 
	
	while( (tokentype = gettoken()) == BRACKETS || tokentype == PARENS)
		if(tokentype == BRACKETS)
		{
			strcat(dscp, "array ");
			strcat(dscp, token);
			strcat(dscp, " of ");
		}
		else if(tokentype == PARENS)
		{
			strcat(dscp, "function returning ");
		}
	
}

