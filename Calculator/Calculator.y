%{
#include <stdio.h>
int flag;
%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithemeticExpression:E{
printf("\nResult is %d\n",$$);
return 0;
};
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%
void main()
{
printf("Enter any arithemetic expression: ");
yyparse();
if(flag=0)
{
printf("\nInvalid expression\n");
}
void yyerror()
{
printf("\nInvalid expression\n");
flag=1;
}
