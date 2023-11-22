%{
#include <stdio.h>
%}
%%
"abc" {printf("ABC");}
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
