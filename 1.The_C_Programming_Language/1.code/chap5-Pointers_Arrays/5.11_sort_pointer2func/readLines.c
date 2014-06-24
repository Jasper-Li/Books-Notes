#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void *malloc(size_t size);//allocate size bytes and return a pointer tothe allocated memory. The memory is not initialized.
void free(void *ptr);// free memory space pointed by ptr, which is returned by malloc.


//read max number characters into line[], return length;
extern int my_getline(char line[], int max);

extern int lines;

// read n lines text, return lines number
int readLines(char *s[])
{
#define MAXLENGTH 1000
	char buf[MAXLENGTH], *p;
	int length;

	for(lines=0; (length=my_getline(buf, MAXLENGTH)) > 0; lines++)
	{
//		printf("jasper: buf is:\n%s",buf);
		p = (char *) malloc( (size_t)(length+1) );
		if(	p == NULL)
		{
			printf("%s error: cannot alloc %d bytes meomry.\n", __func__, length);
			free(p);
		}

		strcpy(p, buf);
		s[lines] = p;
//		printf("jasper: s[%d] is:\n%s", lines, s[lines]);
//		printf("jasper: s[%d] is 0x%ld.\n",lines, s[lines]);
	}
	
	return lines;
}
