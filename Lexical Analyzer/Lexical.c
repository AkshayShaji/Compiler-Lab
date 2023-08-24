#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main()
{
  int lineno=0,i=0,num=0;
  char ch,str[10];
  FILE *fp;
  fp=fopen("Input.txt","r");
  while((ch=getc(fp))!=EOF)
    {
      if(isdigit(ch))
      {
        num=ch-48;
        ch=getc(fp);
        while(isdigit(ch))
          {
            num=num*10+(ch-48);
            ch=getc(fp);
          }
        printf("%d is an integer\n",num);
        ungetc(ch,fp);
      }
      else if(isalpha(ch))
      {
        str[i++]=ch;
        ch=getc(fp);
        while(isdigit(ch)||isalpha(ch)||ch=='_'||ch=='$')
          {
            str[i++]=ch;
            ch=getc(fp);
          }
        str[i++]='\0';
        if(strcmp("int",str)==0||strcmp("void",str)==0||strcmp("float",str)==0||strcmp("double",str)==0||strcmp("if",str)==0||strcmp("else",str)==0||strcmp("else if",str)==0||strcmp("case",str)==0||strcmp("break",str)==0||strcmp("for",str)==0||strcmp("while",str)==0||strcmp("do",str)==0)
        {
          printf("%s is a keyword\n",str);
        }
        else
        {
          printf("%s is an identifier\n",str);
          ungetc(ch,fp);
        }
        i=0;
      }
      else if(ch==' '||ch=='\t')
      {
        printf("\n");
      }
      else if(ch=='\n')
      {
        lineno++;
      }
      else if(ch=='='||ch=='+'||ch=='-'||ch=='*'||ch=='%'||ch=='/')
      {
        printf("%c is an operator\n",ch);
      }
      else
      {
        printf("%c is a special symbol\n",ch);
      }
    }
  printf("Total number of an input line in input file is %d\n",lineno);
  fclose(fp);
  return 0;
}
