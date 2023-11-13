--------------------------------------------------------------------------------------------
-- FATEC SAO JOSE DO RIO PRETO
-- CURSO: TECNOLOGIA EM INFORMATICA PARA NEGOCIOS - MANHA
-- PROFA.: VALERIA MARIA VOLPE
-- DISCIPLINA: ADMINISTRACAO DE BANCO DE DADOS
-- NOME DO ALUNO(A): Wesley Bertipaglia
-- ATIVIDADE 1
--------------------------------------------------------------------------------------------

create database BD_Imobiliaria go
use BD_Imobiliaria go

--------------------------------------------------------------------------------------------
-- Criando as tabelas
--------------------------------------------------------------------------------------------
create table Pessoas 
(
	idPessoa	int			not	null		primary key			identity,
	nome		varchar(50)	not	null,
	cpf			varchar(15)	not	null		unique,
	status		int,		
	check		(status in (1,2,3,4))
)
go

create table Proprietarios 
(
	pessoa_id	int			not	null		primary key			references Pessoas,
	agencia		int			not null,
	nroConta	int			not null,
)
go

create table Corretores
(
	pessoa_id		int				not null	primary key			references Pessoas,
	creci			varchar(10)		not null,
	salarioBase		decimal(10,2)	not null	default 2500.00,
	salario			decimal(10,2)		null	default 0,
	check			(salarioBase >= 2500.00),
	check			(salario >= 0)
)
go

create table Inquilinos
(
	pessoa_id	int				not null	primary key			references Pessoas,
	renda		decimal(10,2)	not null,
	check		(renda >= 500.00)
)
go

create table Telefones 
(
	pessoa_id	int				not null,
	numero		varchar(20)		not null,
	primary key (pessoa_id, numero),
	foreign key (pessoa_id)		references	Pessoas(idPessoa)
)
go
 
create table Imoveis 
(
	idImovel		int				not	null			primary key			identity,
	proprietarioId	int				not null,
	inquilinoId		INTEGER			null,
	descricao		varchar(100)	not	null,
	valor			money			not null,
	data			date			    null,			-- data da loca��o
	situacao		int					null			default 1,
	foreign Key		(proprietarioId)	references		Proprietarios(pessoa_id),
	foreign Key		(inquilinoId)	references		Inquilinos(pessoa_id),
	check			(valor >= 300.00)
)
go

create table Corretores_Adm_Imoveis
(
	corretorId	int				not null,
	imovelId	int				not null,
	dataOp		datetime		not null	default getdate(), -- data que o im�vel foi alugado
	dataPagto	date				null,
	corretagem	money			not null	default 0,
	status		int					null	default 1,
	primary key	(corretorId, imovelId, dataOp),
	foreign key	(corretorId)	references	Corretores(pessoa_id),
	foreign key	(imovelId)		references	Imoveis (idImovel),
	check		(dataOp <= dataPagto),
	check		(corretagem >= 0)
)
go

--------------------------------------------------------------------------------------------
-- INSERCAO DOS DADOS
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- TABELA PESSOAS
--------------------------------------------------------------------------------------------
insert into Pessoas values	('Valeria',			'111.332.123-98', 1),
							('Joao Alves',		'222.544.903-09', 1),
							('Julio Cesar',		'333.544.903-09', 1),
							('Viviane',			'444.544.903-09', 1),
							('Vanessa',			'555.544.903-09', 1),
							('Miguel Augusto',	'666.544.903-09', 1),
							('Bruna',			'777.544.903-09', 1),
							('Talles Augusto',	'888.544.903-09', 1),
							('Pedro Augusto',	'999.544.903-09', 1),
							('Maria Rosa',		'100.544.903-09', 1),
							('Danilo',			'110.544.903-09', 1)
go

--------------------------------------------------------------------------------------------
-- TABELA PROPRIETARIOS
--------------------------------------------------------------------------------------------
insert into Proprietarios values	(1,	1111, 11111),
									(3, 3333, 33333),
									(5, 5555, 55555),
									(7, 7777, 77777)
go

--------------------------------------------------------------------------------------------
-- TABELA INQUILINOS
--------------------------------------------------------------------------------------------
insert into Inquilinos values	(2,  2000.00),
								(10, 1000.00),
								(8,  1200.00)
go

--------------------------------------------------------------------------------------------
-- TABELA CORRETORES
--------------------------------------------------------------------------------------------
insert into Corretores	(pessoa_id, creci)
values					(4,  123404),
						(6,  123406),
						(9,  123409),
						(11, 123011)
go

select * from Corretores
go

--------------------------------------------------------------------------------------------
-- TABELA TELEFONES
--------------------------------------------------------------------------------------------
insert into Telefones values	(1,   '(17) 99111-1111'),
								(1,   '(17) 99111-1112'),
								(2,   '(17) 99222-2222'),
								(3,   '(17) 99333-3333'),
								(4,   '(17) 99444-4444'),
								(4,   '(17) 99444-4442'),
								(5,   '(17) 99555-5555'),
								(6,   '(17) 99111-6666'),
								(7,   '(17) 99111-7777'),
								(8,   '(17) 99111-8888'),
								(9,   '(17) 99111-9999'),
								(10,  '(17) 99111-1010'),
								(10,  '(17) 99111-1012'),
								(11,  '(17) 99011-1111')
go

select * from Telefones
go
--------------------------------------------------------------------------------------------
-- TABELA IM�VEIS
--------------------------------------------------------------------------------------------
insert into Imoveis (proprietarioId, descricao, valor) 
values				(1, 'casa de praia', 2500.00),
					(1, 'chacara', 1200.00),
					(3, 'apartamento cobertura', 3000.00),
					(3, 'casa na montanha', 14000.00),
					(5, 'casa pequena', 800.00),
					(5, 'apartamento', 960.00),
					(5, 'sal�o pequeno', 1000.00),
					(7, 'sala comercial', 1100.00),
					(7, 'sal�o grande', 1500.00),
					(7, 'edicula bonitinha', 560.00)
go

select * from Imoveis
go
--------------------------------------------------------------------------------------------
-- TABELA CORRETORES_ADM_IMOVEIS
--------------------------------------------------------------------------------------------
insert into Corretores_Adm_Imoveis	(corretorId, imovelId, corretagem)
values								(4, 1, 500.00),
									(4, 2, 200.00),
									(4, 3, 700.00),
									(6, 4, 1500.00),
									(6, 5, 150.00),
									(6, 6, 200.00),
									(6, 7, 250.00),
									(9, 8, 400.00),
									(9, 9, 350.00),
									(11, 10, 50.00)
go


--------------------------------------------------------------------------------------------
-- Com base na DDL acima elabore as quest�es abaixo:
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
-- 1a) 
--------------------------------------------------------------------------------------------
select IM.idImovel, IM.descricao, IM.proprietarioId, pe.nome
from Imoveis IM, Proprietarios PR, Pessoas PE
where IM.proprietarioId = PR.pessoa_id and
PR.pessoa_id = PE.idPessoa
ORDER BY PE.nome


--------------------------------------------------------------------------------------------
-- 1b) 
--------------------------------------------------------------------------------------------
create view consulta_item_a as
select IM.idImovel, IM.descricao, IM.proprietarioId, pe.nome
from Imoveis IM, Proprietarios PR, Pessoas PE
where IM.proprietarioId = PR.pessoa_id and
PR.pessoa_id = PE.idPessoa

select * from consulta_item_a ORDER BY PE.nome --test

--------------------------------------------------------------------------------------------
-- 1c) 
--------------------------------------------------------------------------------------------
create view consulta_imoveis as
select IM.idImovel, IM.proprietarioId, PE.nome as Proprietario, IM.descricao, IM.situacao, IM.inquilinoId
from Imoveis IM, Pessoas PE

SELECT * FROM consulta_imoveis --test

--------------------------------------------------------------------------------------------
-- 1d) 
--------------------------------------------------------------------------------------------
create view consulta_imoveis_alugados as
select IM.idImovel, IM.descricao, IM.situacao, INQ.pessoa_id, PE.nome Inquilino
from Imoveis IM, Inquilinos INQ, Pessoas PE
where PE.idPessoa = INQ.pessoa_id and
PE.idPessoa = IM.inquilinoId and 
IM.situacao = 1

select * from consulta_imoveis_alugados --test

--------------------------------------------------------------------------------------------
-- 1e) 
--------------------------------------------------------------------------------------------
create procedure cadastra_proprietario_e_imovel 
@pessoa_nome varchar(50),
@pessoa_cpf varchar(14),
@pessoa_status int,
@proprietario_agencia int,
@proprietario_conta int,
@imovel_descricao varchar(100),
@imovel_valor money

as 
	declare @id int
	set @id = @@IDENTITY

	insert into Pessoas values (@pessoa_nome, @pessoa_cpf, @pessoa_status)
	
	insert into Proprietarios values (@id, @proprietario_agencia, @proprietario_conta)

	insert into Imoveis (proprietarioId, descricao, valor) values (@id, @imovel_descricao, @imovel_valor)
go

exec cadastra_proprietario_e_imovel 'nome pessoa', '000.454.123-00', 1, 1111, 2323,'descricao do imovel', 1000 --test

--------------------------------------------------------------------------------------------
-- 1f) 
--------------------------------------------------------------------------------------------
create procedure altera_valor_aluguel
@taxa_reajuste decimal

as
	UPDATE Imoveis
	SET valor = valor * (@taxa_reajuste  / 100)
	WHERE Imoveis.situacao = 1;
go

exec altera_valor_aluguel 10 --test

--------------------------------------------------------------------------------------------
-- 1g) 
--------------------------------------------------------------------------------------------
create table histoico_reajuste_aluguerl
(
	idHistorico int not null primary key identity,
	imovelId int not null references Imoveis(idImovel),
	reajusteData date DEFAULT GETDATE(),
	autorReajuste varchar(50) DEFAULT USER_NAME(),
	valor money not null
)
go

--------------------------------------------------------------------------------------------
-- Boa sorte!
--------------------------------------------------------------------------------------------
