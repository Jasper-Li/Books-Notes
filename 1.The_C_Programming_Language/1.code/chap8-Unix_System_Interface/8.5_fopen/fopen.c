#include"fopen.h"
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdio.h>

#define PERMS 0666
static MY_FILE iobuf[OPEN_MAX]=
// cnt,	buf_ptr, buf_base, 	fd, flags
{ {0,	NULL,	NULL,	0,	_READ},	//stdin
  {0,	NULL,	NULL,	1,	_WRITE},//stdout
  {0,	NULL,	NULL,	2,	_WRITE},//stderr
};

/*
 * Description: Open file, return file pointer.
 * Version: 1.0 	Date: 2014.07.16
 * Author: Jasper Li
 */
MY_FILE * my_fopen( char *name, char *mode)
{
	int fd;
	MY_FILE *fp;

	// check mode
	if(*mode != 'r' && *mode != 'a' && *mode != 'w')
		return NULL;

	//check if name is stdin, stdout, stderr
	if(strcmp(name, "stdin") == 0)
		return iobuf;
	else if(strcmp(name, "stdout") == 0)
		return iobuf + 1;
	else if(strcmp(name, "stderr") == 0)
		return iobuf + 2;

	// check max open file number;
	
	for(fp = iobuf+3; fp < iobuf+OPEN_MAX; fp++)
		if((fp->flags &( _READ | _WRITE)) == 0)
			break;	// find free slot
	if(fp == iobuf + OPEN_MAX)
		return NULL; // no more free slots


	
	if(*mode = 'r')
	{
		if((fd = open(name, O_RDONLY, 0)) == -1)
			return NULL;
	}
	else if(*mode = 'a')
	{
		if((fd = open(name, O_WRONLY, 0)) == -1)
			fd = creat(name, PERMS);
		if(lseek(fd, 0, SEEK_END) < 0)
			return NULL;
	}
	else 
	{	if((fd = creat(name, PERMS)) == -1)
			return NULL;
	}

	fp->fd = fd;
	fp->buf_base = fp->buf_ptr = NULL;
	fp->cnt = 0;
	fp->flags = *mode == 'r' ? _READ : _WRITE;

	return fp;
}

