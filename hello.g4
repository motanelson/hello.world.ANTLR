grammar Hello;
program  :  ID  * EOF;        
ID : [a-z]+ ;             
WS : [ \t\r\n]+ -> skip ; 
