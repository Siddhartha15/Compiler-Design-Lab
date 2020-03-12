%{ 
/* Definition section */
#include<stdio.h> 
#include "y.tab.h" 
extern int yylval; 
%} 

/* Rule Section */
%% 
[a] {return A;}
[b] {return B;}
[$] {return T;}
[\n] return NL; 

. return yytext[0]; 

%% 

int yywrap() 
{ 
return 1; 
} 
