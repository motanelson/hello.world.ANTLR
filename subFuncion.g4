grammar subFuncion;

program: FUNCTS * EOF;
FUNCTS : ID  | '{'  | '}' | EXPRE  ;
EXPRE : ID '=' VALUE [\n]* | ID '=' NUMBER [\n]*;
NUMBER : [0-9]+ ('.' [0-9])*;
ID: [a-zA-Z]+;
VALUE : '"'~[\t\r\n]+ '"' ;
WS : [ \t\r\n] ->skip;
