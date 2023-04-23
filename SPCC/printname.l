%{
    #include<stdio.h>
    char name[50];
%}


%%

[\n] {printf("\nHello %s!",name);
return 1;
}

%%

int yywrap(){return 0;}

void main()
{
    char opt;
    do{
        printf("Enter your name : ");
        scanf("%s",name);
        yylex();
        printf("\nDo you want to continue? (y/n) : ");
        scanf("%c",&opt);
    }while(opt=='y');
}