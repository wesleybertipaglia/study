--------------------------------------------------------------------------------------------
-- FATEC SAO JOSE DO RIO PRETO
-- CURSO: TECNOLOGIA EM INFORMATICA PARA NEGOCIOS - MANHA
-- PROFA.: VALERIA MARIA VOLPE
-- DISCIPLINA: ADMINISTRACAO DE BANCO DE DADOS
-- DATA DA ENTREGA: 28 DE NOVEMBRO DE 2022
-- NOME DO ALUNO(A): Wesley Duarte Pereira Bertipaglia
-- TRABALHO 01
--------------------------------------------------------------------------------------------

create database BD_ReparOS go
use BD_ReparOS go

--------------------------------------------------------------------------------------------
-- Criando as tabelas
--------------------------------------------------------------------------------------------
create table Pessoas 
(
	id			int			not	null		primary key			identity,
	nome		varchar(50)	not	null,
	cpf			varchar(12)	not	null,
	status		int,		
	check		(status in (1,2,3,4))
)
go

create table Clientes 
(
	pessoa_id	int			not	null		primary key			references Pessoas,
	fone		varchar(20)	not	null
)
go

create table Atendentes 
(
	pessoa_id	int				not null	primary key			references Pessoas,
	salario		decimal(10,2)	not null
)
go

create table OS 
(
	numero		int				not null	primary key			identity,
	data		datetime		not null,
	total		decimal(10,2),
	status		int				not null,
	cliente_id	int				not null	references clientes,
	vendedor_id	int				not null	references atendentes
)
go
 
create table Categorias 
(
	id			int				not	null	primary key			identity,
	descricao	varchar(50)		not	null,
	status		int		
)
go

create table Reparos 
(
	codigo		int				not null	primary key			identity,
	nome		varchar(50)		not null,
	preco		decimal(10,2)	not null,
	categoria_id	int			not null	references categorias, 
	status			int			not null
)
go

create table OS_Reparos 
(
	os_numero		int			not null	references os, 
	reparo_codigo	int			not null	references reparos, 
	qtd				int			not null,
	preco			decimal(10,2)	not null,	primary key(os_numero, reparo_codigo)
)
go

--------------------------------------------------------------------------------------------
-- Com base na DDL acima elabore as questões abaixo:
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
-- 1) (1.0 ponto) Faça uma view para mostrar todas as OS, apresentando: número da OS, data, 
-- total, status, nome do cliente e nome do vendedor.
--------------------------------------------------------------------------------------------
CREATE VIEW Ordens_Servico AS
	SELECT OS.numero, OS.data, OS.total, 
    CASE OS.cliente_id
        WHEN OS.cliente_id THEN Pessoas.nome
    END [Cliente],
    CASE OS.vendedor_id
        WHEN OS.vendedor_id THEN Pessoas.nome
    END [Vendedor],
    CASE OS.STATUS
		WHEN 1 THEN 'Status 1'
		WHEN 2 THEN 'Status 2'
		WHEN 3 THEN 'Status 3'
		ELSE 'Status 4'
	END [Status]
	FROM OS, Pessoas
GO

-- teste
SELECT * FROM Ordens_Servico
GO


--------------------------------------------------------------------------------------------
-- 2) (1.0 ponto) faça uma função escalar para calcular o total de uma OS. A função deve 
-- receber o número da OS e retornar o seu total. 
-- Atenção, deve-se efetuar o calculo do valor da OS utilizando os dados da tabela OS_Reparos.
--------------------------------------------------------------------------------------------
SELECT os_numero, reparo_codigo, qtd, preco, (qtd * preco) Total
FROM OS_Reparos
GO			


--------------------------------------------------------------------------------------------
-- 3) (2.0 pontos) faça uma procedure que efetue a mudança do preço de um reparo. 
-- A procedure deve retornar um status de retorno, sendo 0 para sucesso e 1 para insucesso.
--------------------------------------------------------------------------------------------
CREATE PROCEDURE Muda_Preco_Reparo 
(
	@reparo_codigo	int, 
	@preco			decimal(10,2)
)
AS
BEGIN
	UPDATE OS_Reparos SET
		preco = @preco
	WHERE reparo_codigo = @reparo_codigo
	IF @@error <> 0
	begin
		RETURN(1)
	END
	ELSE
	BEGIN
		RETURN(0)
	END
END
GO

-- teste
EXEC Muda_Preco_Reparo 1, 150 
GO


--------------------------------------------------------------------------------------------
-- 4) (2.0 pontos) Elabore uma procedure para o cadastro de atendentes 
-- Atenção: a tabela atendentes à filha da tabela pessoas. Desta forma, essa procedure 
-- deve ter dois inserts.
--------------------------------------------------------------------------------------------
CREATE PROCEDURE Cadastra_Atendente
	@nome			varchar(50),
	@cpf			varchar(12),
	@status			int,		
    @id_atendente   int,
	@salario		decimal(10,2)	
AS
	INSERT INTO Pessoas (nome, cpf, status) VALUES 
	(
		@nome,
		@cpf,
		@status
	)

	INSERT INTO Atendentes (pessoa_id, salario) VALUES 
    (
        @id_atendente,
        @salario
    )
GO

-- teste
EXEC Cadastra_Atendente 'Luisa da Silva', '436789765-32', 1, 7, 10000
GO


--------------------------------------------------------------------------------------------
-- 5) (2.0 pontos) faça um trigger para registrar o histórico de salários dos atendentes. 
-- Esse trigger deve ser executado após a mudança do salário e deve armarzenar os dados em 
-- uma nova tabela que deve ser criada por você, contendo: codigo do atendente, data da 
-- mudança do salário, salário antigo, salário novo e o usuário que realizou a mudança.
--------------------------------------------------------------------------------------------
CREATE TABLE Historico_Salarios
(
	id_historico      int             not null identity,
    data        datetime        not null,
	id_atendente int not null,
    salario_antigo decimal(10,2)   not null,
    salario_novo   decimal(10,2)   not null,
    usuario     varchar(50)     not null,
    primary key (id_historico, data)
)
GO

CREATE TRIGGER Gravar_Salarios
ON      Atendentes    
AFTER   UPDATE
AS
BEGIN
    INSERT INTO Historico_Salarios 
		SELECT 	getdate(), D.pessoa_id,
                D.salario, I.salario, SYSTEM_USER
        FROM deleted D, inserted I
        WHERE   D.pessoa_id = I.pessoa_id
end
GO

-- teste
UPDATE Atendentes SET salario = 2000
WHERE pessoa_id = 1

SELECT * FROM Atendentes
GO

SELECT * FROM Historico_Salarios
GO


--------------------------------------------------------------------------------------------
-- 6) (1.0 ponto) faça um trigger para não permitir a exclusão física de uma categora, 
-- mas ao invés disso, efetue a mudança do status da categoria para 3.
--------------------------------------------------------------------------------------------
CREATE TRIGGER Deleta_Pessoa
ON Pessoas
INSTEAD OF DELETE 
AS 
BEGIN
    UPDATE Pessoas SET status = 3
    WHERE id IN
    (
        SELECT id FROM deleted
    )
END 
GO

-- teste
DELETE FROM Pessoas 
WHERE id = 1
GO 

SELECT * FROM Pessoas
GO


--------------------------------------------------------------------------------------------
-- 7) (1.0 ponto) faça um trigger para desviar (ao invés) o cadastro de um reparo para outra 
-- tabela a ser criada por você. 
--------------------------------------------------------------------------------------------
CREATE TABLE Copia_Reparos 
(
	codigo		int				not null	primary key,
	nome		varchar(50)		not null,
	preco		decimal(10,2)	not null,
	categoria_id	int			not null	references categorias, 
	status			int			not null,
    data        datetime    not null,
    usuario     varchar(50) not null
)
GO

CREATE TRIGGER Log_Insert_Reparos
ON Reparos
AFTER INSERT 
AS
BEGIN 
    INSERT INTO Copia_Reparos
        SELECT *, getdate(), SYSTEM_USER
        FROM inserted
END
GO

-- teste
INSERT INTO Reparos VALUES ('Encanamento', 300, 2, 1)

SELECT * FROM Reparos
GO

SELECT * FROM Copia_Reparos
GO


--------------------------------------------------------------------------------------------
-- Bons estudos!
--------------------------------------------------------------------------------------------