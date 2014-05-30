#include<stdio.h>
#include<stdlib.h>
/**
 * Shell Sort: sort array v[0] ... v[n-1] into increasing order
 * Version 1.0
 * Date 20140530
 * Author Jasper Li
 */
void print(int a[], int n);
void print_line_show_swap(int a[], int n, int left, int right);
void swap(int *a, int *b);
void shellsort(int v[], int n)
{
	int gap, i, j, tmp;
	
	for(gap = n/2; gap > 0; gap /= 2)
		for(i=gap; i<n; i++)
			for(j= i-gap; j>=0 && v[j] > v[j+gap]; j-=gap)
			{
				swap(&v[j], &v[j+gap]);
				print_line_show_swap(v, n, j, j+gap);
			}
}
void swap (int *a, int *b)
{
	int tmp;
	
	tmp = *a;
	*a = *b;
	*b = tmp;
}

int main(void)
{
#define NUM 20
	int a[NUM];
	int i;

	for(i=0; i< NUM; i++)
	{	
		a[i] = rand() % 100;
		printf("%4d", a[i]);
	}
	printf("\n");

	shellsort(a, NUM);

	printf("The result is:\n");

	print(a, NUM);

	return 0;
}

void print(int a[], int n)
{
	int i;

	for(i=0; i<n; i++)
		printf("%4d", a[i]);
	printf("\n");
}

void print_line_show_swap(int a[], int n, int left, int right)
{
	int i;

	for(i=0; i<n; i++)
		if(i==left || i == right)
			printf("\033[1;32m%4d\033[0m", a[i]);
		else
			printf("%4d", a[i]);
	printf("\n");
}
