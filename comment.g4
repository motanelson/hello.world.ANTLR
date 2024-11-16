grammar comment;

program: DEFS * EOF;
DEFS : '#' STR* -> skip;
STR :  ~[\t\r\n]  ;
WS : [ \t\n\r] ->skip;
