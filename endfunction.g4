grammar test;

program: FUNCTS * EOF;
FUNCTS : 'def ' ID [\r]* [\n]*  (EXPRE)* [\r]* [\n]* 'end def'  [\r]* [\n]* ;
EXPRE : ID '=' VALUE [\n]* | ID '=' NUMBER [\n]*;
NUMBER : [0-9]+ ('.' [0-9])*;
ID: [a-zA-Z]+;
VALUE : '"'~[\t\r\n]+ '"' ;
WS : [ \t\r\n] ->skip;