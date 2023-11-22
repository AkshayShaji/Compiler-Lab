%{
#include <stdio.h>
int valid=1;
%}
%token digit letter
%%
start:letter S
S:letter S
|digit S
|
;
%%
int main()
{
printf("Enter the input: ");
yyparse();
if(valid)
{
printf("It is an identifier");
}
}
int yyerror()
{
printf("It is not an identifier");
valid=0;
return 0;
}
