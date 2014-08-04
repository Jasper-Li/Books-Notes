#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<stdlib.h>
#include<unistd.h>
#include<dirent.h>
#include<bits/stdio_lim.h>
#include<string.h>
/**
 * Description: Print the size and name of the given path. if no path, print current directory.
 * If a file is a directory, get in it and print out its contents.
 * The longest chars number of path is FILENAME_MAX defined in stdio_lim.h
 *
 * Version: 1.0 		Date: 2014.07.17
 * Author: Jasper Li
 */
int main(int argc, char *argv[])
{
	void fsize(char *name);

	if(argc == 1)
		fsize(".");

	while(--argc)
		fsize(*++argv);

	return 0;
}


void fsize(char *name)
{
	int stat(const char *path, struct stat *buf);
	void dirwalk(const char *path);
	int i;
	struct stat buf;

	if(stat(name, &buf) == -1)
	{
		fprintf(stderr, "can not get status, %s", name);
		exit(1);
	}

	printf("%-ld\t%s\n", buf.st_size, name);

	if(buf.st_mode & S_IFMT & S_IFDIR) // is directory
		dirwalk(name);
	

}

void dirwalk(const char *name)
{
	char  fullpath[FILENAME_MAX];// bits/stdio_lim.h
	DIR	*dirp;
	struct dirent *direntry;

	if((dirp = opendir(name)) == NULL)
	{
		fprintf(stderr, "can not open dir %s", name);
		exit(1);
	}

	while((direntry = readdir(dirp)) != NULL)
	{
		if(strcmp(direntry->d_name, ".") == 0 || strcmp(direntry->d_name, "..") == 0)
			continue;

		if(strlen(name) + strlen(direntry->d_name) + 2 > FILENAME_MAX)
		{
			fprintf(stderr, "too long file name-->%s/%s", name, direntry->d_name);
			continue;
		}
	
		strcpy(fullpath, name);
		strcat(fullpath, "/");
		strcat(fullpath, direntry->d_name);

		fsize(fullpath);
	}
}
