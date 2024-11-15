grammar sets;

program: ID '=' VALUE * EOF;
ID : [a-zA-Z]+;
VALUE : '"'~[\t\r\n]+ '"' ;

