%{
#include <stdio.h>
#include <stdlib.h>
int i,n,flag;
%}
%%
[0-9]+ {c=atoi(yytext);
if(n==2)
{
printf("It is a prime number\n");
}
else if(n==0||n==1)
{
printf("It is not a prime number\n");
}
else
{
for(i=2;i<n;i++)
{
if(n%i==0)
{
flag=1;
}
if(flag==1)
{
printf("It is not a prime number\n");
}
else
{
printf("It is a prime number\n");
}
}
}
}
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

