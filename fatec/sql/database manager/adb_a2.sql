-------------------------------------------
-- TIPOS DE JOINS
-------------------------------------------

create database Tipos_Joins go
use tipos_joins go

-------------------------------------------
-- criar uma tabela departamento
-------------------------------------------
create table departamentos
(
	codigo		int			not null primary key identity,
	nome		varchar(50) not null
)
go

-------------------------------------------
-- inserir os departamentos na tabela
-------------------------------------------
insert into departamentos
values		('RH'),
			('MKT'),
			('Vendas'),
			('Compras'),
			('Contas a Pagar'),
			('Contas a Receber')
go

select * from departamentos
go
-------------------------------------------
-- criar uma tabela funcionarios e 
-- relacionar com a tabela departamentos
-------------------------------------------
create table funcionarios
(
	idFunc		int			not null 	primary key identity,
	nome		varchar(50)	not null,
	id_dep		int			references departamentos -- FK
)
go
-------------------------------------------
-- inserir funcionarios e relacionalos com
-- os departamentos
-------------------------------------------
insert into funcionarios
values		('Valeria', 3),
			('Ricardo', null),
			('Maria Antonia', 1),
			('Cleonice', 2),
			('Miguel', 1),
			('Walter', 6)
go

insert into funcionarios
values		('Andre', Null)
go

select * from funcionarios
go

-------------------------------------------
-- inner join
-------------------------------------------
-- 1) Consultar todos os funcionarios e 
-- quais departamentos eles trabalham
-------------------------------------------
select f.idFunc "ID Funcion�rio", f.nome "Funcion�rio", d.codigo "ID Departamento", d.nome "Departamento"
from funcionarios f inner join departamentos d on f.id_dep = d.codigo
go

-------------------------------------------
-- left outer join
-------------------------------------------
-- 2) Consultar todos os departamentos e 
-- trazer os funcionario que estao 
-- relacionados com os departamentos e 
-- os departamentos sem funcionarios relacionados
-------------------------------------------
select f.idFunc "ID Funcion�rio", f.nome "Funcion�rio", d.codigo "ID Departamento", d.nome "Departamento"
from  departamentos d left join funcionarios f on d.codigo = f.id_dep
go

-------------------------------------------
-- 3) Consultar todos os funcionarios e trazer 
-- os departamentos que estao relacionados com 
-- os funcionarios e os funcionarios sem
-- departamentos relacionados
-------------------------------------------
select f.idFunc "ID Funcion�rio", f.nome "Funcion�rio", d.codigo "ID Departamento", d.nome "Departamento"
from funcionarios f left join departamentos d on f.id_dep = d.codigo
go

-------------------------------------------
-- right outer join
-------------------------------------------
-- 4) Consultar os funcionarios que percentem 
-- a um departamento e os departamentos
-- sem funcionarios
-------------------------------------------
select f.idFunc "ID Funcion�rio", f.nome "Funcion�rio", d.codigo "ID Departamento", d.nome "Departamento"
from funcionarios f right join departamentos d on d.codigo = f.id_dep
go

-------------------------------------------
-- full outer join
-------------------------------------------
-- 5) Consultar todos os departamentos e 
-- funcionarios
-------------------------------------------
select f.idFunc "ID Funcion�rio", f.nome "Funcion�rio", d.codigo "ID Departamento", d.nome "Departamento"
from departamentos d full join funcionarios f on d.codigo = f.id_dep
go