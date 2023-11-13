--------------------------------------------------------------------------------------------
-- FATEC SAO JOSE DO RIO PRETO
-- CURSO: TECNOLOGIA EM INFORMATICA PARA NEGOCIOS - MANHA
-- PROFA.: VALERIA MARIA VOLPE
-- DISCIPLINA: ADMINISTRACAO DE BANCO DE DADOS
-- DATA DA ENTREGA: 28 DE NOVEMBRO DE 2022
-- NOME DO ALUNO(A): Wesley Duarte Pereira Bertipaglia
-- TRABALHO 03
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
	inquilinoId		int					null,
	descricao		varchar(100)	not	null,
	valor			money			not null,
	data			date			    null,			-- data da loca��o
	situacao		int					null			default 1,
	foreign Key		(proprietarioId)	references		Proprietarios(pessoa_id),
	foreign key		(inquilinoId)		references		Inquilinos(pessoa_id),
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
								(5,   '(17) 99555-5555'),
								(8,   '(17) 99111-8888'),
								(10,  '(17) 99111-1010'),
								(10,  '(17) 99111-1012'),
								(11,  '(17) 99011-1111')
go

select * from Telefones
go
--------------------------------------------------------------------------------------------
-- TABELA IMOVEIS
--------------------------------------------------------------------------------------------
insert into Imoveis (proprietarioId, inquilinoId, descricao, valor, data, situacao) 
values				(1, 2, 'casa de praia', 2500.00, getdate(), 2),
					(1, 10,'chacara', 1200.00, getdate(), 2),
					(3, 8, 'apartamento cobertura', 3000.00, getdate(), 2),
					(3, null, 'casa na montanha', 14000.00, null, 1),
					(5, 10, 'casa pequena', 800.00, getdate(), 2),
					(5, null, 'apartamento', 960.00, null, 3),
					(5, 2, 'sal�o pequeno', 1000.00, null, 2),
					(7, null,'sala comercial', 1100.00, null, 1),
					(7, 8,'sal�o grande', 1500.00, getdate(), 2),
					(7, null,'CORRETORES_ADM_IMOVEISedicula bonitinha', 560.00, null, 3)
go

--------------------------------------------------------------------------------------------
-- TABELA 
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
-- a) Faca uma View que mostra todos os im�veis e qual a sua situa��o (alugado, dispon�vel ou inativo). Deve ter como sa�da: os dados do im�vel e quem � o propriet�rio do im�vel. 
--------------------------------------------------------------------------------------------
CREATE VIEW vw_situacao_imoveis AS
SELECT IM.idImovel, IM.descricao, IM.situacao, IM.proprietarioId, PE.nome Proprietario 
FROM Imoveis IM, Pessoas PE
WHERE PE.idPessoa = IM.proprietarioId
GO

--------------------------------------------------------------------------------------------
-- b) Faca uma View que mostre todos os im�veis alugados e quem � o inquilino. Deve ter a sa�da: todos os dados do im�vel, o nome e o telefone do inquilino. 
--------------------------------------------------------------------------------------------
CREATE VIEW vw_imoveis_alugados AS
SELECT IM.idImovel, IM.descricao, IM.situacao, IM.inquilinoId AS "Id Do Inquilino", PE.nome Inquilino, TE.numero
FROM Imoveis IM, Pessoas PE, Telefones TE
WHERE IM.inquilinoId = PE.idPessoa AND IM.inquilinoId = TE.pessoa_id
GO

--------------------------------------------------------------------------------------------
-- c) Faca uma View que mostre todas pessoas que s�o propriet�rios de im�veis alugados ou n�o.  Deve mostrar os dados dos propriet�rios e dos im�veis. 
--------------------------------------------------------------------------------------------
CREATE VIEW vw_proprietarios AS
SELECT PE.idPessoa, PE.nome, PE.cpf, IM.idImovel, IM.descricao, IM.valor, IM.situacao
FROM Pessoas PE, Imoveis IM
WHERE PE.idPessoa = IM.proprietarioId
GO

--------------------------------------------------------------------------------------------
-- d) Faca uma procedure para cadastrar o propriet�rio e seu im�vel. Lembre-se que propriet�rio � uma pessoa. 
--------------------------------------------------------------------------------------------
CREATE PROCEDURE pr_cadastra_imovel_proprietario 
(
	@nome varchar(50), @cpf varchar(15), @agencia int, @conta int,
	@descricao_imovel varchar(50), @valor_imovel money
)

AS
BEGIN
	DECLARE @id int

	-- Cadastra pessoa
	INSERT INTO Pessoas (nome, cpf) VALUES (@nome, @cpf)
	SET @id = @@IDENTITY

	-- Cadastra Propriet�rio
	INSERT INTO Proprietarios (pessoa_id, agencia, nroConta) VALUES (@id, @agencia, @conta)

	-- Cadastra Im�vel
	INSERT INTO Imoveis (proprietarioId, inquilinoId, descricao, valor, situacao)
	VALUES (@id, null, @descricao_imovel, @valor_imovel, 1)

	-- Cadastra Corretor
	exec pr_adm_imovel @@IDENTITY
END
GO

--------------------------------------------------------------------------------------------
-- e) Faca uma procedure para atualizar o valor do aluguel apenas dos im�veis alugados. A taxa de reajuste do aluguel deve ser recebida pela procedure.  
--------------------------------------------------------------------------------------------
CREATE PROCEDURE pr_atualiza_valor_aluguel 
(
	@imovelId int, @taxa_reajuste decimal
)

AS
BEGIN
	UPDATE Imoveis
	SET valor = ((@taxa_reajuste/100) * valor) + valor
	WHERE idImovel = @imovelId
END
GO


--------------------------------------------------------------------------------------------
-- f) Faca uma procedure para cadastrar um inquilino e seu telefone. Lembre-se que inquilino � uma pessoa. 
--------------------------------------------------------------------------------------------
CREATE PROCEDURE pr_cadastra_inquilino
(
	@nome varchar(50), @cpf varchar(15), @renda money, @telefone varchar(20)
)

AS
BEGIN
	DECLARE @id int
	
	-- Cadastra pessoa
	INSERT INTO Pessoas (nome, cpf) VALUES (@nome, @cpf)
	SET @id = @@IDENTITY

	-- Cadastra Inquilino
	INSERT INTO Inquilinos (pessoa_id, renda) VALUES (@id, @renda)

	-- Cadastra Telefone
	INSERT INTO Telefones (pessoa_id, numero) VALUES (@id, @telefone)
END
GO



--------------------------------------------------------------------------------------------
-- g) Faca um procedure para, toda vez que cadastrar um im�vel, cadastre quem administra esse im�vel. 
--------------------------------------------------------------------------------------------
CREATE PROCEDURE pr_adm_imovel
(
	@idImovel int, @idCorretor int, @valorImovel money
)
AS
BEGIN
	SET @idImovel = @@IDENTITY
	INSERT INTO Corretores_Adm_Imoveis (imovelId, corretorId, corretagem)
	VALUES (@idImovel, @idCorretor, (@valorImovel * 0.05))
END
GO



--------------------------------------------------------------------------------------------
-- h) Crie uma tabela para controlar o hist�rico de aluguel. Coloque a coluna de in�cio e fim de contrato. Fa�a um trigger para armazenar os dados do im�vel sempre que o status mudar para dispon�vel (1). 
--------------------------------------------------------------------------------------------
CREATE TABLE historico_aluguel (
	IdHistorico INT NOT NULL PRIMARY KEY IDENTITY,
	idImovel INT NOT NULL REFERENCES Imoveis(idImovel),
	incioContrato DATE DEFAULT GETDATE(),
	fimContrato DATE DEFAULT GETDATE() + 365
)
go

CREATE TRIGGER tr_historico_aluguel
ON Imoveis
AFTER UPDATE
AS
BEGIN 
	INSERT INTO historico_aluguel (idImovel)
	select I.idImovel
	from inserted I
END
GO

--------------------------------------------------------------------------------------------
-- i) Faca um trigger que ao inv�s de excluir um im�vel, coloque-o como indispon�vel, mas s� se o im�vel n�o estiver alugado. 
--------------------------------------------------------------------------------------------
CREATE TRIGGER tr_imovel_indisponivel
ON Imoveis
INSTEAD OF DELETE
AS 
BEGIN
	UPDATE Imoveis
	SET situacao = 3
	where situacao  in
	(
		select Imoveis.idImovel from deleted d
		where Imoveis.situacao = 1
	 )
END
GO

--------------------------------------------------------------------------------------------
-- Boa sorte!
--------------------------------------------------------------------------------------------
