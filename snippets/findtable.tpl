/*
  Listando as tabelas que possua uma determinada coluna
*/

SELECT OWNER, TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHAR_LENGTH, DATA_PRECISION
FROM   ALL_TAB_COLUMNS
where  OWNER = USER                           
AND    UPPER(COLUMN_NAME) LIKE UPPER('%&nome_coluna%') 
AND    UPPER(DATA_TYPE) LIKE UPPER('%&tipo_coluna%')  
ORDER  BY TABLE_NAME;