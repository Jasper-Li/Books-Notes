#include<stdarg.h>
#include<stdio.h>

/*
 * Description: Minimal printf with variable argument list
 * Version: 1.0		Date: 2014.07.11
 * Author: Jasper Li
 */

int main(void)
{
	void minprintf(char *fmt, ...);
	
	minprintf("Today is %d %d %f %s %%.\n", 2014, 07, 11.0, "Friday");

	return 0;

}

void minprintf(char *fmt, ...)
{
	va_list ap;

	va_start(ap, fmt);

	for(; *fmt;	fmt++)
	{
		if(*fmt != '%')
			putchar(*fmt);
		else
			switch(*++fmt)
			{
				case 'd': 
					printf("%d", va_arg(ap, int));
					break;
				case 'f':
					printf("%f", va_arg(ap, double));
					break;
				case 'c':
					putchar((char)va_arg(ap, int));
					break;
				case 's':
					printf("%s", va_arg(ap, char *));
					break;
				default:
					putchar(*fmt);
					break;
			}
	}
	va_end(ap);
}

