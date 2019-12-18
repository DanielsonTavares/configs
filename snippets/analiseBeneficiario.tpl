select  ass.nome_associado
,       ass.cod_ts
,       ass.tipo_associado
,       ass.ind_situacao
,       ass.cod_plano
,       ass.cod_ts_contrato
from    associado ass
where   ass.num_associado = '[num_associado]';

select ah.*
from   associado_hist ah
where  ah.cod_ts = (select cod_ts from associado where num_associado = '[num_associado]' )
order by ah.dt_historico desc;

select aeh.dt_historico, aeh.cod_ts, tha.tipo_hist, tha.nome_hist, aeh.*
from   associado_esp_hist aeh
,      tipo_historico_ass tha
where  aeh.cod_ts = (select cod_ts from associado where num_associado = '[num_associado]' )
and    tha.tipo_hist = aeh.tipo_hist
order by aeh.dt_historico desc;

select *
from   ocorrencia_associado oa 
where  oa.cod_ts = (select cod_ts from associado where num_associado = '[num_associado]')
order by oa.dt_ocorrencia desc;

select  ce.num_contrato
,       ce.cod_ts_contrato
,       ce.ind_situacao
from    contrato_empresa ce
where   ce.cod_ts_contrato = (select cod_ts_contrato from associado  where num_associado = '[num_associado]');[#]