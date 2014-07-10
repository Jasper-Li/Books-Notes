#include <stdio.h>

#define FLAG 1 

#ifdef 1  

#define IN 100 
#define OUT 200 

int main ( void ) 
{ 
int a , b , c ; 
a = 100  ; 
b = 200  ; 
c = a + b ; 
printf ( " %d + %d = %d \n " , a , b , c ) ; 
} 

#endif 
