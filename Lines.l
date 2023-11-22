%{
#include <stdio.h>
int sc=0,cc=0,wc=0,lc=0;
}%
%%
[\n] {lc++; cc+=yyleng;}
[ \t] {sc++; cc+=yyleng;}
[^\t\n] {wc++; cc+=yyleng;}
%%
int main(int argc,char* argv[])
{
printf("Enter the input: ");
yylex();
printf("Number of lines: %d\n",lc);
printf("Number of spaces: %d\n",sc);
printf("Number of words: %d\n",wc);
printf("Number of character: %d\n",cc);
}
int yywrap()
{
return 1;
}

