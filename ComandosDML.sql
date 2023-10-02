-- DDL CRIACAO DE TABELA

use curso;
CREATE TABLE FUNCIONARIOS 
(ID INT NOT NULL auto_increment,
NOME VARCHAR(50) NOT NULL,
SALARIO DECIMAL(10,2), 
SETOR VARCHAR(30),
PRIMARY KEY (id));

-- DML SELECT 
-- EXEMPLO SELECT

select *
from funcionarios;

-- DML insert 
insert into funcionarios (nome,salario,setor) values
('Joao', 1000, ''),('Jose',2000,''),('Alexandre', 3000, '');
-- ou
insert into funcionarios (nome,salario) values('Pedro',100);

-- DML update

update funcionarios set salario = 1500
where id = 1;

-- ou aumento
update funcionarios set salario = salario*1.10
where id = 2;

update funcionarios set salario = salario*1.5, setor = 'TI'
where id <> 1;

delete from funcionarios
where id = 1;
