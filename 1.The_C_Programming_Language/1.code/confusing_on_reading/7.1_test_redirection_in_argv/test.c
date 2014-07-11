/**
 * This porgram tests that the number of arguments when inputs is rederected with < character in Bash.
 * For example:
		1.test text
		 ---$ cat test.txt 
		 ---I am Jasper Li

		2.command line and outputs
		$ ./test <test.txt 
		Print the args.
		argc = 1.
		1: ./test.
		I am Jasper Li

 * @Auhter Jasper Li
 * @Date 20140526 
 * @Version 1.0
 */
#include<stdio.h>
int main(int argc, char * argv[])
{
	char c;
	int i;

	printf("Print the args.\nargc = %d.\n", argc);
	for(i=0;i<argc;i++)
		printf("%d: %s.\n", i+1, argv[i]);
	
	while((c=getchar()) != EOF)
		putchar(c);

	return 0;
}
