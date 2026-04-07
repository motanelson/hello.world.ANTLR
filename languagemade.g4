grammar test;

program: CODES * EOF;
CODES : SUB | FUNC | EXPRE ;
EXPRE : ID '=' VALUE [\n]* | ID '=' NUMBER [\n]* | ID '=' ID  [\n]*;
FUNC : ID '=' ID '(' ID ')' [\n]*;
SUB : ID '(' ID ')'  [\n]*;
NUMBER : [0-9]+ ('.' [0-9])*;
ID: [a-zA-Z]+;
VALUE : '"'~[\t\r\n]+ '"' ;
WS : [ \t\r\n] ->skip;