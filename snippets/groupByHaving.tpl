select  count(nome_coluna1), nome_coluna2
from    nome_tabela
group by nome_coluna2
having count(nome_coluna1);