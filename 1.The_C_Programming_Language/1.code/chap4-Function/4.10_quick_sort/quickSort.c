#include<stdio.h>
/*
 * Description: quick sort.
 * Version: 1.0
 * Date: 2014.06.04
 * Author: Jasper Li
 */

#define MAX 0xffff 
void print_line_show_swap(int a[], int n, int sa, int sb);
void swap(int v[], int sa, int sb);
void qsort(int v[], int left, int right)
{
	int i, last;
	void swap(int v[], int i, int j);

	if(left >= right)
		return;

	swap(v, left, (left+right)/2);
	last = left;

	for(i=left +1; i<=right; i++)
		if(v[i] < v[left])
			swap(v, i, ++last);
	
	swap(v, left, last);
	qsort(v, left, last - 1);
	qsort(v, last + 1, right);
}

void swap(int v[], int sa, int sb)
{
	if(sa != sb)
	{
		int tmp;
		tmp = v[sa];
		v[sa] = v[sb];
		v[sb] = tmp;
		
		//print_line_show_swap(v, MAX, sa, sb);
	}
}
void print(int a[], int n);
int main(void)
{
	int a[MAX];
	int i;
	
	for(i=0;i<MAX;i++)
		a[i] = rand()%100000;

	print(a, MAX);
	qsort(a, 0, MAX-1);
	print(a, MAX);
	return 0;
}

void print(int a[], int n)
{
	int i;

	for(i=0; i<n; i++)
		printf("%7d", a[i]);
	printf("\n");
}

v/*
 * Description: print colorful contants, which uses the bash prompt 033.
 */
oid print_line_show_swap(int a[], int n, int sa, int sb)
{
	int i;
	printf("sa=%d, sb = %d.\n", sa, sb);
	for(i=0; i<n; i++)
		if(i==sa || i == sb)
			printf("\033[1;32m%7d\033[0m", a[i]);
		else
			printf("%7d", a[i]);
	printf("\n");
}

