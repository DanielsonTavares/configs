set echo off
set define off
SET VERIFY OFF
set serveroutput on
set feedback on

declare

v_erro    varchar2(500);

begin

  v_erro := 'Descrição do erro';
  
  --commit;
  dbms_output.put_line('Operação realizada com sucesso');
exception
  when others then
     rollback;
     dbms_output.put_line(v_erro ||' - '|| top_utl_padrao.msgErro);
end;
/