%{
#include <stdio.h>
#include "y.tab.h"
}%
%%
[a-zA-Z0-9]* return letter;
[0-9] return digit;
. return yytext[0];
[\n] return 0;
%%
int yywrap()
{
return 1;
}
