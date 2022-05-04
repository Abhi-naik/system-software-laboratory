%{
  #include<stdio.h>
  int s=0, m=0,f=0;
%}
%%
"//".* {s++;}
"/*" {f=1;}
"*/" {f=0;m++;}
, {if(f==0) ECHO;} ;
%%
int main()
{ 
 yyin=fopen("lab1b.c","r");
 yyout=fopen("lab11b.c","w");
 yylex();
 printf("number of single line comment %d and multiline are %d",s,m);
 return 0;
}
int yywrap()
{
 return 1;
}
