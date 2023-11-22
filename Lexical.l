%{
#include <stdio.h>
%}
%%
int|float|double|char|if|else|for|do|while {printf("Keyword");}
[a-zA-Z][a-zA-Z0-9]* {printf("Identifier");}
%%
int main()
{
printf("Enter the input: ");
yylex();
}
int yywrap()
{
return 1;
}
