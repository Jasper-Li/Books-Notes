#include<stdio.h>

/*
 * Description: Date convert from "year-month-day" format to "year-XXst-day" format.
 * Version: 1.0 	Date: 2014.06.05
 * Author: Jasper Li
 */

static char daytab[2][13]={
	{0,31,28,31,30,31,30,31,31,30,31,30,31}, 	// normal year.
	{0,31,29,31,30,31,30,31,31,30,31,30,31}		// leap year.
};

// test if x year is a leap year. return 1 if true, or 0 for normal.
int leap_year(int x);

// day_of_year: get xx-st day of a year from "year-month-day"
int day_of_year(int year, int month, int day)
{
	int i, leap;
	leap = leap_year(year);

	for(i=1; i<month; i++)
		day +=daytab[leap][i];

	return day;
}

//month_day: set month and day from day of year
void month_day(int year, int day_of_year, int *pmonth, int *pday)
{
	int i,leap;
	leap = leap_year(year);
	for(i=1; day_of_year > daytab[leap][i]; i++)
		day_of_year -= daytab[leap][i];
	
	*pmonth = i;
	*pday = day_of_year;
}

// test if x year is a leap year. return 1 if true, or 0 for normal.
int leap_year(int x)
{
	return x%4==0 && x%100!=0 || x%400 ==0;
}

int main(void)
{
	int year, month, day;
	int n;

	printf("Input year month day in format \"year month day\".\n");
	scanf("%d%d%d", &year, &month, &day);

	n=day_of_year(year, month, day);
	printf("day in year is %d.\n", n);

	month = day = 0;
	month_day(year, n, &month, &day);
	printf("The month day is %d, %d.\n", month, day);

	return 0;
}
