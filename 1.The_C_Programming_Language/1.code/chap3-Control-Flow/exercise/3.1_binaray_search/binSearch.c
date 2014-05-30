#include<stdio.h>

/*
 * Binaray Search. find x in sorted array v( v[0] <= v[1] <= ... v[n]).
 * New Requirement: Version 1.0 makes two tests inside the loop. When one would suffice. Write version 2.0 with only one test inside the loop.
 * Version 2.0
 * Date 20140529
 * Author Jasper Li
 */
int binSearch(int x, int v[], int maxEdge)
{
	int n, lower, upper, mid;
	
	lower = 0;
	upper = maxEdge-1;
	
	while(lower != upper)
	{
		mid = (lower + upper) /2;
		
		// test log for how it run.
		printf("%3d-%3d-%3d --%d .\n", v[lower], v[mid], v[upper], x);
		if(v[mid] < x)
			lower = mid + 1;
		else
			upper = mid;
	}
	
	
	return (v[lower] == x) ? lower: -1 ;
}

int main(void)
{
#define NUM 100
	int a[NUM];
	int i, x;

	// initial array a
	for(i=1; i<NUM; i++)
		a[i] = i;

	printf("input a number to search.\n");
	scanf("%d", &x);
	
	if((i=binSearch(x, a, NUM)) >= 0)
		printf("The index is %d.\n", i);
	else
		printf("Can not fine %d.\n", x);

	return 0;
}
