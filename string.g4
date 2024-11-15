grammar string;

program: VALUE * EOF;
VALUE : '"'~[\t\r\n]+ '"' ;

