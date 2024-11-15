grammar sub;

program: SUB * EOF;
SUB : ID ' ' VALUE;
ID : [a-zA-Z]+;
VALUE : '"'~[\t\r\n]+ '"' ;

