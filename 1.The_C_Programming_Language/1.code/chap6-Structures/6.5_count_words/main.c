#include<stdio.h>
#include<ctype.h>

#include"cntword.h"

/**
 * Description: count the occurence of all words by binary tree.
 * Version: 1.0		Date: 2014.06.27
 * Author: Jasper Li
 */

char word[MAXWORDS];

int main(void)
{
	struct tnode *root=NULL;

	struct tnode * addtree(struct tnode*, char *);
	void printtree(struct tnode*);

	int getword(void);
	while(getword() != EOF)
		if(isalpha(word[0]))
		root = addtree(root, word);

	printtree(root);

	return 0;
}
