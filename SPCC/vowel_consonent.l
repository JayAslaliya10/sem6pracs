%{
    void display(int, char*);
    int flag;
%}


%%

[a|e|i|o|u|A|E|I|O|U] {
    flag=1; 
    display(flag,yytext);
}
. {
    flag=0; 
    display(flag,yytext);
}

%%

int yywrap(){return 0;}

int main()
{
 printf("\n Enter the character : ");
 yylex();
 return 0;
}

void display(int flag, char *t)
{
    if(flag==1){
        printf("'%s' is a vowel",t);
    }
    else{
        printf("'%s' is a consonent",t);
    }
}