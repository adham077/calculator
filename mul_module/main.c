#include <stdio.h>
#include "mul.h"

void scan_input(float*,float*);

int main(void){
    do{
        char c;
        float a,b;
        printf("\033c");        

        printf("please enter your preffered operation: + - * /  \n ");
        fflush(stdin);fflush(stdout);
        scanf("%c",&c);

        switch(c){
           case '*':
                scan_input(&a,&b);
                printf("a*b=%lf\n",multiplication(a,b));
                break;
       

           default:
                printf("invalid operation\n");

        }

        printf("press any key if you want to continue, for exit press n");
        fflush(stdin);fflush(stdout);
        
    }while(getchar()!='n');

    return 0;
}

void scan_input(float* a,float* b){
    printf("enter a:\n");
    fflush(stdin);fflush(stdout);
    scanf("%f",a);
    printf("enter b:\n");
    fflush(stdin);fflush(stdout);
    scanf("%f",b);
}
