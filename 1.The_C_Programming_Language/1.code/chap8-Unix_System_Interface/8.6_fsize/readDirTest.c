#include<stdio.h>
#include<dirent.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<errno.h>

int main(void)
{
	char buf[sizeof(struct dirent)];
	
	struct stat stbuf;

	int fd;
	int i=0,n;

	char name[]="./test";

	if((fd = open(name, O_RDONLY, 0)) == -1
	//	|| fstat(fd, &stbuf) == -1
	//	|| (stbuf.st_mode & S_IFMT != S_IFDIR)
	)
	{
		fprintf(stderr, "cannot open %s", name);
		return 1;	
	}

	if(fstat(fd, &stbuf) == -1)
	{
		fprintf(stderr, "get file status failed.\n");
		return 2;
	}

	if((stbuf.st_mode & S_IFMT)  != S_IFDIR)
	{
		fprintf(stderr, "the file %s is not a directory.", name);
		return 3;
	}
	
	while((n=read(fd, &buf, sizeof(buf))) == sizeof(buf))
	{
		i++;
		
	}
	
	printf("errno = %d\n", errno);
	/*The error is 21, IS A DIRECTORY 
	 * The demo code in book does not worked on linux.
	 * 2014.07.17 Jasper Li
	 */

	return 0;
}
