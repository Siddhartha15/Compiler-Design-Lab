%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token A B NL

/* Rule Section */
%% 
stm : S NL {
	printf("\nEnter string is inValid\n");
	exit(0);
};
S : A S B |
; 

%% 

//driver code 
void main() 
{ 
printf("Enter the string\n");
yyparse(); 

}
void yyerror() 
{ 
printf("\nEntered arithmetic expression is Invalid\n\n"); 
exit(0);
} 
