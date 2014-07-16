#include<stdlib.h>
#include"fopen.h"
#include<stdio.h>

// get a char from fp
char my_getc(MY_FILE * fp)
{
	int _fillbuf(MY_FILE *fp);

	return (--fp->cnt >= 0) ?(unsigned char) *fp->buf_ptr++ : _fillbuf(fp);
	
}

// fill the buf_base
int _fillbuf(MY_FILE *fp)
{
	int bufsize;

	// file read flag
	if((fp->flags & _READ ) != _READ)
		return EOF;

	bufsize = (fp->flags & _UNBUF) ? 1 : BUFSIZ;

	if((fp->buf_base =(char *) malloc((size_t)bufsize)) == NULL)
		return EOF;
	fp->buf_ptr = fp -> buf_base;

	fp->cnt = read(fp->fd, fp->buf_base, bufsize);
#if 0
	if(fp->cnt < 0)
	{
		fp->flags = _ERR;
		fp->cnt = 0;
		return EOF;
	}
	else if(fp->cnt == 0)
	{	
		fp->flags = _EOF;
		return EOF;
	}
	else
	{
		fp->cnt -- ;
		return *fp->buf_ptr ++;
	}
#else
	if (--fp->cnt < 0)
	{	
		if(fp->cnt == -1)
			fp->flags = _EOF;
		else
			fp->flags = _ERR;
		fp->cnt = 0;
		return EOF;
	}
	
	return *fp->buf_ptr ++;
#endif
}
