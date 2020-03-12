%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token A B NL

/* Rule Section */
%% 
stm : S NL {
	printf("\nEnter string is Valid\n");
	exit(0);
};
S : W 
; 
W : A W | B W | A | B ;


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
