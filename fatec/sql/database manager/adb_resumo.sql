-- Formulas

-- VIEW
create view (nome da view) as
  select (nome das colunas)
  from (nome das tabelas)
go

-- VIEW EXEMPLO:
CREATE VIEW Ordens_Servico AS
	SELECT OS.numero, OS.data, OS.total, OS.status
	FROM OS
GO

-- PROCEDURE
create procedure (nome da procedure) 
  @variavel tipo
as
  // procedimento
go

-- PROCEDURE EXEMPLO
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

-- TRIGGER
create trigger (nome da trigger) 
on (tabela)
after (operação, ex: update, insert, select, create ou drop)
as 
  // codigo
go

-- TRIGGER EXEMPLO
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