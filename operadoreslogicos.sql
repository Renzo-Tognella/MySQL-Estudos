SELECT *
FROM senso
where cod_uf = '35'
and populacao > 50000
and ano =  '2014'
order by populacao desc;

-- operador between

SELECT *
FROM senso
where cod_uf = '35'
and populacao between 50000 and 100000
and ano =  '2014'
order by populacao desc;

-- operador in

SELECT *
FROM senso
where cod_uf in ('35','12')
and populacao between 0 and 100000
and ano =  '2014'
order by populacao desc;

-- operador not in

SELECT *
FROM senso
where cod_uf not in('35','12')
and populacao between 50000 and 100000
and ano =  '2014'
order by populacao desc;

-- like localiza valores que contenham or em qualquer lugar

SELECT *
FROM senso
where nome_mun like ('%or%')
and ano =  '2014'
order by populacao desc;

-- like localiza valores que contenham r na 2 posicao

SELECT *
FROM senso
where nome_mun like ('_r%')
and ano =  '2014'
order by populacao desc;

-- like localiza valores que começam com a e possuem pelo menos 3 caracteres

SELECT *
FROM senso
where nome_mun like ('a__%')
and ano =  '2014'
order by populacao desc;

-- like localiza valores que começam com a termina com o

SELECT *
FROM senso
where nome_mun like ('a%o')
and ano =  '2014'
order by populacao desc;

-- like localiza valores que começam com a

SELECT *
FROM senso
where nome_mun like ('a%')
and ano =  '2014'
order by populacao desc;

-- like coringa

SELECT * 
FROM senso
where nome_mun like ('___ra%')
and ano =  '2014'
order by populacao desc;

-- operador not

SELECT *
FROM senso
where nome_mun not like ('a%')
and ano =  '2014'
order by populacao desc;

-- operador or

SELECT *
FROM senso
where nome_mun not like ('a%')
and (cod_uf = '35' or cod_uf = '15')
order by populacao desc;

-- operador is not null

SELECT *
FROM senso
where regiao is not null;

-- operador is null

SELECT *
FROM senso
where regiao is null;

-- preparando o cenario is null

select * from senso
where regiao = '';
update senso set regiao = null
where regiao = '';
update senso set regiao = ''
where regiao is null;

-- operador having

select cod_uf, estado,count(*)qtd
from senso
where ano = '2014'
group by cod_uf,estado having count(cod_mun)>500;

-- operador having

select cod_uf, estado, count(*)qtd
from senso
where ano = '2014'
group by cod_uf,estado having count(cod_mun)<500;

-- operador having

select cod_uf,estado, count(cod_mun)qtd,sum(populacao)
from senso
where ano = '2014'
group by cod_uf,estado having sum(populacao)>15000000;
