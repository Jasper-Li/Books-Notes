#ifndef CNTWORD_H
#define CNTWORD_H
struct tnode
{
	char *word;
	int count;
	struct tnode * left;
	struct tnode * right;
};
#define MAXWORDS 100

#endif
