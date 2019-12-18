/*
  Localizando objetos pelo conteudo.
  os seguintes tipos de objetos serão
  considerados: FUNCTION, JAVA SOURCE, 
  LIBRARY, PACKAGE, PACKAGE BODY, PROCEDURE,
  TRIGGER, TYPE, TYPE BODY
 */
SELECT *
FROM   DBA_SOURCE S
WHERE  S.OWNER = USER
AND    S.NAME LIKE UPPER('%&NOME_OBJETO%')
AND    S.TEXT LIKE UPPER('%&PALAVRA_PROCURADA%')
ORDER BY S.NAME, S.TYPE, S.LINE