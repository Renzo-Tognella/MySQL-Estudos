-- select * from senso
-- usando operador = 

select * from senso
where cod_uf = '35'
and ano = '2014';

-- usando operador =

select * from senso
where nome_mun = 'Dourado' 
and cod_uf = '35'
and ano = '2014';

-- usando operador >

select * from senso
where populacao > 100000
and ano = '2014';

-- usando operador >

select * from senso
where populacao > 1000000
and cod_uf = '35'
and ano = '2014';

-- usando operador <

select * from senso
where populacao < 10000
and ano = '2014';

-- usando operador <

select * from senso
where populacao < 50000
and ano = '2014';

-- usando operador <=

select * from senso
where populacao <= 10000
and ano = '2014';

-- usando operadores matematicos 

select 1+3 as retorno; 

select 2*3 as retorno;

select 1-3 as retorno;

select 4/2 as retorno;

select 40%7 as retorno;

-- combinando operadores matematicos 

select ((1+4) * (3*2))/5 as retorno;

-- script projetando acrescimo de 10% na população 

select nome_mun, populacao, populacao * 1.10 as projecaoPOP, populacao * 0.10 as aumento
from senso 
where ano = '2014';

