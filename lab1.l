%{
  #include<stdio.h>
  int id=0, op=0, br=0;
%}
%%
[0-9]+ {id++;}
"+"|"*" {op++;}
"(" {br++;}
")" {br--;}
%%
int main()
{
 printf("enter a arithematic expression");
 yylex();
 if(br==0 && id==(op+1))
 {
  printf("Valid Expression.... \nNumber of identifiers are %d and operators are %d",id,op);
  }
  else
  printf("Invalid Expression....");
 return 0;
}
int yywrap()
{
 return 1;
}
