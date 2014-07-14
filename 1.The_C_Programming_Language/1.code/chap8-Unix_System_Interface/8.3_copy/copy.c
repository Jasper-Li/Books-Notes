#include<stdio.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<error.h>

/*
 * Description:	 Copy f1 to f2, while f2 is not a directory.
 * Version: 1.0 		Date: 2014.07.14
 * Author: Jasper Li
 */

int main(int argc, char *argv[])
{

	#define PERMS 0666 	// RW for owner, group, others
	void error(int status, int errnum, const char *format, ...);

	int f1, f2, n;
	char buf[BUFSIZ];

	if(argc != 3)
		error(1, 0, "Usage: copy from to.");
	
	if((f1=open(argv[1], O_RDONLY, 0)) == -1)
		//report error
		error(2, 0, "can't open file %s", argv[1]);

	if((f2=creat(argv[2], PERMS)) == -1)
		//report error
		error(3, 0, "can't write file %s %03o.", argv[2], PERMS);

	while( (n=read(f1, buf, BUFSIZ)) > 0)
		if(write(f2, buf, n) != n)
			error(4, 0, "write error on file %s", argv[2]);

	return 0;
}


