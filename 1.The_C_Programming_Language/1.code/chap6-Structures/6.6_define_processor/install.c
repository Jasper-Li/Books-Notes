#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct nlist
{
	struct nlist * next;
	char * name;
	char * def;
};

#define MAXNUM 101
struct nlist * hashtab[MAXNUM];
int initialFlag = 0;

struct nlist * install(char *name, char * def)
{
	unsigned int hash(char * s);
	struct nlist * lookup(char *s);
	struct nlist * np;
	int hashval;

/*	if(initialFlag == 0)
	{
		int i;
		initialFlag = 1;
		for(i=0;i<MAXNUM;i++)
			hashtab[i] = NULL;
	}
*/
	if((np = lookup(name)) == NULL)
	{
		np = (struct nlist * ) malloc(sizeof(struct nlist)); 
		if(np == NULL || (np->name = strdup(name)) == NULL)
			return NULL ;
			
		hashval = hash(name);
		np->next = hashtab[hashval];
		hashtab[hashval] = np;
	}
	else
		free(np->def);
	
	if((np->def = strdup(def)) == NULL)
		return NULL;

	return np;
}

unsigned int hash(char * s)
{
	unsigned int val;
	val = 0;

	while(*s != '\0')
		val = *s++ + val * 31;
	return val % MAXNUM;
}

struct nlist * lookup(char *name)
{
	unsigned int hash(char *s);
	struct nlist * p;

	for(p=hashtab[hash(name)]; p != NULL; p=p->next)
		if(strcmp(p->name, name) == 0)
			return p;
	return NULL;
}

void printTab(void)
{
	struct nlist *np;
	int i;
	for(i=0; i<MAXNUM; i++)
	{
		if(hashtab[i] != NULL)
			for(np = hashtab[i]; np != NULL; np = np->next)
				printf("Jasper: %d: %s --> %s\n", i, np->name, np->def);
	}
}
