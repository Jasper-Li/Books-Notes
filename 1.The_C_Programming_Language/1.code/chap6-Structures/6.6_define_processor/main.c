#include<stdio.h>
#include<string.h>
/**
 * Description: Implement a simple version of the # define processor suitable for use with C programs.
 * 
 * It will replace MOCRO with the contents until the end of this line.
 * Version: 1.0 	Date: 2014.07.10
 * Author: Jasper Li
 */

struct nlist
{
	struct nlist * next;
	char * name;
	char * def;
};
int getword(void);	
#define MAXWORDS 100
extern char word[MAXWORDS];

int main(void)
{
	void initial(void);

	initial();
	return 0;

}

void initial(void)
{
	struct nlist * install(char *name, char * def);
	struct nlist * lookup(char *name);
	void notChange(char start, char end);

	char name[MAXWORDS];
	char def[MAXWORDS];
	int val;
	struct nlist *np;

	while(getword() != EOF)
	{
		if(word[0] == '#')
		{
			getword();
			if(strcmp(word, "define") == 0)
			{
				getword();
				strcpy(name, word);
				
				while((val=getword()) != EOF && val != '\n')
				{
					strcat(def, word);
					strcat(def, " ");
				}
				install(name, def);
				name[0] = def[0] = '\0';
			
			}
			else if(strcmp(word, "include") == 0)
			{ 
				printf("#%s ", word);
				notChange(0, '\n');
			} 
			else
				printf("#%s ", word);
		}
		else if((np=lookup(word)) != NULL) 
			printf("%s ", np->def);

		// the normal words
		else if(word[0]=='\n') //end of line
			printf("\n");
		else if(word[0] == '\"') // " **** "
			notChange('\"', '\"');
		else if (word[0] == '\'')
			notChange('\'', '\'');
		else
			printf("%s ", word);	
	}
}

void notChange(char start, char end)
{
	int val;
	if(start > 0)
		printf("%c", start);
	while(val=getword() != EOF && word[0] != end)
		printf("%s", word);
	printf("%c", end);
}

