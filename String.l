%{
#include <stdio.h>
int v=0,c=0;
%}
%%
[aeiouAEIOU] {c++;}
. {v++;}
%%
int main()
{
printf("Enter the input: ");
yylex();
printf("Number of vowels: %d\n",v);
printf("Number of constrains: %d\n",c);
}
int yywrap()
{
return 1;
}
