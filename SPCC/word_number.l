%{

%}

%%

[a-zA-Z]+ {printf("The given input is a word.");}
[0-9]+ {printf("The given input is a number.");}
[a-zA-Z0-9]+ {printf("The given input is a combination of both word and number.");}
. {printf("The given input is an invalid input.");}

%%

int yywrap(){return 0;}

int main()
{
    printf("Enter the string : ");
    yylex();
}