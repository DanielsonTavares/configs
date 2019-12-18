select dt_execucao, cod_usuario, txt_nom_rotina, txt_mensagem, txt_comando
from   log_execucao 
where  upper(txt_nom_rotina) like upper('%[#]%')
order by 2 desc;