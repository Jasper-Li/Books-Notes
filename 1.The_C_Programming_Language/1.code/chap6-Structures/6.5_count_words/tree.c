#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include"cntword.h"

struct tnode* addtree(struct tnode *p , char *s)
{
	int cmp;

	if(p==NULL)
	{
		if((p=(struct tnode*)malloc(sizeof(struct tnode))) 
				!= NULL)
		{
			if((p->word = malloc(strlen(s) + 1)) != NULL)
				strcpy(p->word, s);

			p->count ++;
			p->left = NULL;
			p->right = NULL;
		}
		else
		{
			printf("Cannot alloc memory!.\n");
			free(p);
		}
	}
	else if((cmp=strcmp(p->word, s)) == 0)
		p->count ++;
	else if(cmp<0)
		p->right = addtree(p->right, s);
	else
		p->left = addtree(p->left, s);

	return p;
}
void printtree(struct tnode *p ) 
{
	if(p != NULL)
	{
		printtree(p->left);
		printf("%-5d%s\n", p->count, p->word);
		printtree(p->right);

	}
}
