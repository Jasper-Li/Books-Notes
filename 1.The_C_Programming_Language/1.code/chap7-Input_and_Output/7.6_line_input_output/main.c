#include<stdio.h>

int my_fgets(char *s, int max, FILE *stream);
int my_fputs(char *s, FILE* stream);
#define MAXNUM 100
int main(void)
{
	int result ;
	char buf[MAXNUM];
	
	result = my_fgets(buf, MAXNUM, stdin);
	my_fputs(buf, stdout);
	printf("len=%d\n", result);

	return 0;
}	

/*
 * Description: read a line characters at most max from stream into s.
 * Return the length of the string.
 * Version: 1.0 		Date: 2014.07.11
 * Author: Jasper Li
 */
int my_fgets(char *s, int max, FILE *stream)
{
	int c;
	int i = 0;

	while(--max && (c=fgetc(stream)) != EOF)
	{
		i++;
		if((*s++ = c) == '\n')
			break;
	}
	*s='\0';
	return i;

}
int my_fputs(char *s, FILE* stream)
{
	int c;
	while(c=*s++)
		fputc(c, stream);

	return ferror(stream)?EOF:0;
}
