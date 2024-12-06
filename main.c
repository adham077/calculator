#include <stdio.h>
#include <math.h>
#include "configuration.h"
#include "mul.h"
#include "sub.h"
#include "Add_Function.h"
#include "division.h"
#include "modulus.h"

void scan_input(float*,float*);

int main(void){
        char c;
    do{
        char c;        
        float a,b;
        printf("\033c");
        printf("please enter your preffered operation: + - * / % \n ");
        fflush(stdin);fflush(stdout);
        c = getchar();
        switch(c){

            #ifdef mul
            case '*':
                scan_input(&a,&b);
                printf("a*b=%lf\n",multiplication(a,b));
                break;
            #endif

            #ifdef add
            case '+':
                scan_input(&a,&b);
                printf("a+b=%lf\n",AddFunction(a,b));
                break;
            #endif

            #ifdef sub
            case '-':
                scan_input(&a,&b);
                printf("a-b=%lf\n",subtract(a,b));
                break;
            #endif

            #ifdef div
            case '/':
                scan_input(&a,&b);
                printf("a/b=%lf\n",Division(a,b));
                break;
            #endif

            #ifdef mod
            case '%':
                scan_input(&a,&b);
                printf("a%b=%lf\n",int_modulus(a,b));
                break;
            #endif
                       
          
           default:
                printf("invalid operation\n");

        }
        printf("press any key if you want to continue, for exit press n");
        fflush(stdin);fflush(stdout);
        scanf("%c",&c);

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