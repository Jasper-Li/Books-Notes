#include<stdio.h>

/*
 * Description: A Storage allocator, chapter 8.7 of <<The C Programming Language>>
 * Version: 1.0		Date: 2014.07.17
 * Author: Japser Li
 */

typedef long Align;	// for aliganment to long boundary
union header
{
	struct 
	{
		union header * ptr;
		unsigned size;
	}s;
	Align	x;
};

typedef union header Header;

static Header base;	// empty list to get started
static Header *freep =NULL; // start of free list

void *my_malloc(unsigned nbytes);
void my_free(void *ap);

int main(void)
{
	Header*a, *b, *c;
	unsigned length = sizeof(Header);
	
	printf("freep = %lx\n", freep);
	a = my_malloc(length);
	printf("freep = %lx\n", freep);
print();

	b = my_malloc(length);
	printf("freep = %lx\n", freep);
print();

	c = my_malloc(length);
	printf("freep = %lx\n", freep);
print();
//	a--;
//	b--;
//	c--;
	printf("a=%p a->s.ptr=%p a->s.size=%lx\n", a, a->s.ptr, a->s.size);
	printf("b=%p b->s.ptr=%p b->s.size=%lx\n", b, b->s.ptr, b->s.size);
	printf("c=%p c->s.ptr=%p c->s.size=%lx\n", c, c->s.ptr, c->s.size);

	my_free(b);
print();

	printf("freep = %lx\n", freep);
	printf("a=%p a->s.ptr=%p a->s.size=%lx\n", a, a->s.ptr, a->s.size);
	printf("b=%p b->s.ptr=%p b->s.size=%lx\n", b, b->s.ptr, b->s.size);
	printf("c=%p c->s.ptr=%p c->s.size=%lx\n", c, c->s.ptr, c->s.size);
}
void print(void)
{
	Header *p;
	printf("\nstructure:\n");
	
	p= &base;
	do
	{
		printf("a=%p a->s.ptr=%p a->s.size=%d\n", p, p->s.ptr, p->s.size);
		p=p->s.ptr;
	}
	while(p!=&base);

	printf("structur end ^^^^^^^^\n\n");
}
//general purpose storage allocator
void *my_malloc(unsigned nbytes)
{
	Header *p, *prevp;
	Header *morecore(unsigned nuinits);
	unsigned nunits;

	nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;

	if((prevp = freep) == NULL)
	{
		base.s.ptr = freep = prevp = &base;
		base.s.size = 0;
	}

	for(p=prevp->s.ptr; ; prevp = p, p=p->s.ptr)
	{
		if(p->s.size >= nunits)
		{
			if(p->s.size == nunits)
				prevp->s.ptr = p->s.ptr;
			else
			{
				p->s.size -=nunits;
				p += p->s.size;
				p->s.size = nunits;
			}
			freep = prevp;
			return (void*)(p+1);
		}
		if(p == freep) // wrapped around free list
			if((p=morecore(nunits)) == NULL)
				return NULL;
	}
	
}

#define NALLOC 1024 //minimun units to request

//ask system ofr more memory
Header *morecore(unsigned nu)
{
	char *cp;
	void *malloc (size_t nbytes);
	Header *up;

	if(nu<NALLOC)
		nu = NALLOC;
	if((cp=malloc(nu * sizeof(Header))) == NULL)
		return NULL;

	up = (Header *)cp;
	up->s.size = nu;

	my_free((void*) (up+1));

	return freep;
}

//put block ap in free list
void my_free(void *ap)
{
	Header *bp, *p;

	bp = (Header *)ap - 1;

	for(p=freep; !(bp > p && bp < p ->s.ptr); p=p->s.ptr)
		if(p >= p->s.ptr && (bp>p || bp < p->s.ptr))
			break;	// freed block at start or end of arena.

	if(bp + bp->s.size == p->s.ptr)	//join to upper nbr
	{
		bp->s.size += p->s.ptr->s.size;
		bp->s.ptr = p->s.ptr->s.ptr;
	}
	else
		bp->s.ptr = p->s.ptr;

	if(p + p->s.size == bp)
	{
		p->s.size += bp->s.size;
		p->s.ptr = bp->s.ptr;
	}
	else
		p->s.ptr = bp;

	freep = p;
}

