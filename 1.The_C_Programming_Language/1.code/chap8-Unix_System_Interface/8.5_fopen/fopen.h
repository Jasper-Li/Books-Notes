#ifndef FOPEN_H
#define FOPEN_H

typedef struct _iobuf{
	int cnt;	// characters left
	char *buf_ptr;	// next character postion
	char *buf_base;	// buffer base address
	int fd; 	// file discripter
	int flags;	// mode of file
} MY_FILE;

#define OPEN_MAX 20

enum file_flags
{
	_READ = 01,		// open file for reading
	_WRITE = 02,	// open file for writing
	_UNBUF = 04,	// the ifle is unbuffered 
	_EOF 	= 010,	// End of file
	_ERR 	= 020 //error ocurred on this file
};

#endif
