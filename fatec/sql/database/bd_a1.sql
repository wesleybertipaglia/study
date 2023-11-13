----------------------------------------------------------------------------
-- criar banco de dados
-----------------------------------------------------------------------------
create  DATABASE VendasBD_Neusa
GO

--------------------------------------------------------------------------
-- Acessar o banco de dados
----------------------------------------------------------------------------
USE VendasBD_Neusa
GO

-----------------------------------------------------------------------
-- Criar a tabela Pessoas
---------------------------------------------------------------------
CREATE TABLE Pessoas
(
    idPessoa INT NOT NULL IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(12) NOT NULL UNIQUE,
    status INT,
    check (status in(1, 2, 3, 4))
)
GO

------------------------------------------------------------------------
-- Criar tabela Clientes
------------------------------------------------------------------------
CREATE TABLE Clientes
(
    pessoaId INT NOT NULL PRIMARY KEY,
    renda DECIMAL(10,2) NOT NULL DEFAULT 0,
    credito DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY     (pessoaId)      REFERENCES Pessoas(idPessoa),
    check           (renda > 0),
    check           (credito >= 0)
)
GO

-------------------------------------------------------------------------
-- Criar a tabela Estagiários
-------------------------------------------------------------------------
CREATE TABLE Estagiarios
(
    pessoaId INT NOT NULL PRIMARY KEY,
    bolsaEst DECIMAL(10,2),
    FOREIGN KEY     (pessoaId)      REFERENCES Pessoas(idPessoa),
    check           (bolsaEst >=0)
)
GO

--------------------------------------------------------------------------
-- Criar a tabela Funcionários
-------------------------------------------------------------------------
CREATE TABLE Funcionarios
(
    pessoaId INT NOT NULL PRIMARY KEY,
    salario DECIMAL(10,2) NOT NULL,
    supId INT,
    -- id do funcionário supervisor
    FOREIGN KEY     (pessoaId)      REFERENCES  Pessoas(idPessoa),
    FOREIGN KEY     (supId)         REFERENCES  Funcionarios(pessoaId),
    check           (salario > 0)
)
GO

-----------------------------------------------------------------------------
-- Criar a tabela Produtos
-----------------------------------------------------------------------------
CREATE TABLE Produtos
(
    idProduto INT NOT NULL IDENTITY PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    qtd INT,
    valor DECIMAL(10,2),
    STATUS int,
    check           (STATUS in (1, 2, 3, 4))
)
GO

------------------------------------------------------------------------------
-- Criar a tabela Pedidos
-----------------------------------------------------------------------------
CREATE TABLE Pedidos
(
    idPedido INT NOT NULL IDENTITY PRIMARY KEY,
    DATA DATETIME NOT NULL,
    valor DECIMAL(10,2) CHECK (valor > 0),
    STATUS INT CHECK (STATUS in (1, 2, 3, 4)),
    clienteId INT NOT NULL,
    funcionarioId INT NOT NULL,
    estagiarioId int,
    FOREIGN KEY     (clienteId)     REFERENCES  Clientes(pessoaId),
    FOREIGN KEY     (funcionarioId) REFERENCES  Funcionarios(pessoaId),
    FOREIGN KEY     (estagiarioId)  REFERENCES  Estagiarios(pessoaId)
)
GO

-----------------------------------------------------------------------------
-- Criar a tabela ItensPedidos
----------------------------------------------------------------------------
CREATE TABLE ItensPedidos
(
    pedidoId INT NOT NULL,
    produtoId INT NOT NULL,
    qtd INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    PRIMARY KEY     (pedidoId, produtoId),
    --chave composta - relaciona os itens ao pedido e aos produtos
    FOREIGN KEY     (pedidoId)      REFERENCES  Pedidos(idPedido),
    FOREIGN KEY     (produtoId)     REFERENCES  Produtos(idProduto)
)
GO

----------------------------------------------------------------------------
-- DML: Linguagem de Manipulação de Dados
----------------------------------------------------------------------------
-- INSERT
-----------------------------------------------------------------------------
-- Cadastrar Produtos
--------------------------------------------------------------------------
INSERT into Produtos
VALUES
    ('Lapis', 100, 0.8, 1)
INSERT into Produtos
VALUES
    ('Apontador', 100, 2.5, 1)
INSERT into Produtos
VALUES
    ('Caneta', 100, 1.2, 1)
INSERT into Produtos
VALUES
    ('Caderno', 100, 4.5, 1)
INSERT into Produtos
VALUES
    ('Borracha', 100, 0.9, 1)
GO

SELECT *
FROM Produtos
GO

------------------------------------------------------------------------
-- Cadastrar Pessoas
-------------------------------------------------------------------------
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Batman', '33333333333', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Superman', '11111111111', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Spiderman', '22222222222', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Wonder Woman', '44444444444', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Iron Man', '55555555555', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Super Girl', '66666666666', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Thor', '99999999999', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Aquaman', '12345678988', 1)
INSERT into Pessoas
    (nome, cpf, status)
VALUES
    ('Flash', '87898956512', 1)
GO

SELECT *
FROM Pessoas
GO

--------------------------------------------------------------------------
-- Cadastrar Clientes
--------------------------------------------------------------------------
INSERT into Clientes
VALUES
    (1, 10000, 3000)
INSERT into Clientes
VALUES
    (2, 15000, 5000)
INSERT into Clientes
VALUES
    (9, 8000, 2000)
GO

SELECT *
FROM Clientes
GO
--------------------------------------------------------------------------
-- Cadastrar Funcionarios
--------------------------------------------------------------------------
INSERT into Funcionarios
VALUES
    (4, 2500, null)
INSERT into Funcionarios
VALUES
    (6, 1000, 4)
INSERT into Funcionarios
VALUES
    (7, 4500, null)
INSERT into Funcionarios
VALUES
    (8, 1500, 7)
GO

SELECT *
FROM Funcionarios
GO
--------------------------------------------------------------------------
-- Cadastrar Estagiarios
--------------------------------------------------------------------------
INSERT into Estagiarios
VALUES
    (3, 800)
INSERT into Estagiarios
VALUES
    (5, 500)
GO

SELECT *
FROM Estagiarios
GO

------------------------------------------------------------------------
-- Cadastrar Pedidos
------------------------------------------------------------------------
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 1, 6, 3)
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 2, 8, 5)
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 1, 6, 5)
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 1, 8, 3)
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 2, 6, 3)
INSERT into Pedidos
VALUES
    (GETDATE(), NULL, 1, 2, 8, 3)
GO

SELECT *
FROM Pedidos
GO

------------------------------------------------------------------------
-- Cadastrar ItensPedidos
------------------------------------------------------------------------
-- Pedido 1
-----------------------------------------------------------------------
INSERT into ItensPedidos
VALUES
    (1, 1, 10, 0.8)
INSERT into ItensPedidos
VALUES
    (1, 2, 10, 2.5)
INSERT into ItensPedidos
VALUES
    (1, 3, 10, 1.2)
INSERT into ItensPedidos
VALUES
    (1, 4, 10, 4.5)
INSERT into ItensPedidos
VALUES
    (1, 5, 10, 0.9)
GO

------------------------------------------------------------------------
-- Pedido 2
-----------------------------------------------------------------------
INSERT into ItensPedidos
VALUES
    (2, 1, 5, 0.8)
INSERT into ItensPedidos
VALUES
    (2, 2, 5, 2.5)
INSERT into ItensPedidos
VALUES
    (2, 3, 5, 1.2)
INSERT into ItensPedidos
VALUES
    (2, 4, 5, 4.5)
GO

------------------------------------------------------------------------
-- Pedido 3
-----------------------------------------------------------------------
INSERT into ItensPedidos
VALUES
    (3, 2, 3, 2.5)
INSERT into ItensPedidos
VALUES
    (3, 3, 3, 1.2)
INSERT into ItensPedidos
VALUES
    (3, 4, 3, 4.5)
GO

------------------------------------------------------------------------
-- Pedido 4
-----------------------------------------------------------------------
INSERT into ItensPedidos
VALUES
    (4, 3, 2, 1.2)
INSERT into ItensPedidos
VALUES
    (4, 5, 2, 0.9)
GO

------------------------------------------------------------------------
-- Pedido 5
-----------------------------------------------------------------------
INSERT into ItensPedidos
VALUES
    (5, 5, 1, 0.9)
GO

SELECT *
FROM ItensPedidos
GO

-----------------------------------------------------------------------
-- VIEW'S
-----------------------------------------------------------------------
-- 1) View simples para consultar todos os produtos da tabela Produtos
------------------------------------------------------------------------

CREATE VIEW v_prods
AS
    SELECT *
    FROM Produtos
GO

SELECT *
FROM v_prods
GO

--------------------------------------------------------------------------
-- 2) Apagar a view criada
---------------------------------------------------------------------------
drop VIEW v_prods
GO

--------------------------------------------------------------------------
-- 3) Criar uma View para consultar os produtos da tabela Produtos
-- trazer id, descrição, quantidade, valor e status dos Produtos
-- Mas serão criadas colunas com nomes diferentes da tabela original
-- Tudo isso será feito por programação
---------------------------------------------------------------------------
CREATE VIEW v_prods
AS
    SELECT Pr.idProduto Codigo, Pr.descricao Produto,
        Pr.qtd Estoque, Pr.valor 'Preço Unitário',
        case Pr.STATUS
                when 1 then 'Ativo'
                when 2 then 'Cancelado'
            end Situacao
    FROM Produtos Pr
GO

-- execuçao da View

SELECT *
FROM v_prods
GO

----------------------------------------------------------------------------
-- 4) Atualização dos valores unitários dos produtos na View
-- Aplicar um aumento de 5% em todos os produtos
----------------------------------------------------------------------------
UPDATE v_prods
SET [Preço Unitário] = [Preço Unitário] * 1.05
GO

SELECT *
FROM v_prods
GO

SELECT *
FROM Produtos
GO

--------------------------------------------------------------
-- criar uma view  para consultar todos os clientes.
---juntando (inner join)  dados  da tabela pessoas com 
--- dados  da tabela  clientes
----------------------------------------------------------------

CREATE view v_clientes
as
    select P.idpessoa codigo, P.nome cliente,
        C.credito credito , C.renda Renda,
        case status 
                When   1 then 'Ativo'
                When   2 then 'Inativo'
        end Situacao
    from Pessoas P, Clientes C
    WHERE P.idPessoa = C.PessoaId
        GO
--------------------------------------------
----    testar a vien     
SELECT *
FROM v_clientes 
    GO

----update na tabela Clientes 
UPDATE Pessoas SET status = 2 Where  idPessoa = 9 
     GO
-------------------------------------------------------
---6) criar uma view para  consultar  todos  os Funcionarios 
---juntando  (Inner join)  dados  da tabelas  pessoas
---dados da tabela  Funcionarios 


------- criate view v_funcionarios 
CREATE VIEW v_funcionarios
as
    SELECT P.idPessoa codigo, P.nome Vendedor, P.cpf CPF,
        F.salario  salario,
        CASE  STATUS
                when 1 then  'Ativo'
                when 2 then 'Inativo'
                end Situacao
    FROM Pessoas P, Funcionarios F
    WHERE P.idPessoa = F.pessoaId
            GO
------teste  a view 
SELECT *
FROM v_funcionarios
      go

-----update  na tabela  Funcionarios  
UPDATE Pessoas set status = 3 where idPessoa  = 6
      GO
UPDATE Pessoas set status = 2 where idPessoa = 8 
       go

-----7) criar uma view para exibir todos os pedidos . A saida mostrar 
--id do pedido , data do pedido , nome do cliente que fez o pedido,
---nome  do funcionario que registrou o pedido , CPF do vendedor 
---que fez o pedido , a renda do Cliente que o pedido , valor total do pedido.
---juntar as tabelas pedidos com as view v_clientes e v_funcionarios
--------------------------------------------------------
CREATE view v_pedidos
as
    SELECT P.idPedido Nr, P.data DATA,
        C.Cliente Cliente, C.Renda Renda,
        F.Vendedor, F.CPF,
        P.valor,
        case status 
               when 1  then 'Ativo'
               when 2  then 'Entregue'
               when 2 then  'Cancelado'
               else 'Pendente'
              end [Situacao Pedido]
    FROM Pedidos P, v_clientes C, v_funcionarios F
    WHERE P.clienteId = C.codigo
        and P.funcionarioid = F.codigo 
       go

------testar a view 
SELECT *
FROM v_funcionarios 
      GO

SELECT *
FROM v_pedidos
where  Cliente = 'Batman'
      GO

SELECT *
FROM v_pedidos
where Cliente = 'Superman'
    and Vendedor = 'Aquaman'
      GO

SELECT Nr, Cliente, Vendedor
FROM v_pedidos 
     go
--------update na tabela Funcionarios 

UPDATE Pedidos set status = 2 where idPedido  = 2
      GO

UPDATE Pedidos set status = 3 where idPedido  = 4
      GO

UPDATE Pedidos set status = 4 where idPedido  = 5
      GO
------8) criar uma view para consultar itens dos pedidos e calcular
---valor de cada item  do pedido . saida no . do pedido , o produto 
----comprado, a quantidade  do produto, o valor unitario e o valor 
-----total de cada item 
---------------------------------------------------------------
CREATE VIEW v_itens
as
    SELECT IPe.pedidoId Nr, Pr.Produto Produto, IPe.qtd Quantidade,
        IPe.valor Preco_Unitario, IPe.valor * IPe.valor Valor_Item
    FROM ItensPedidos IPe, v_prods Pr
    WHERE IPe.produtoId = Pr.Codigo
                 GO

---------------testar a view 
SELECT *
FROM v_itens 
      GO

SELECT SUM(Valor_Item) Total
FROM v_itens
where  Nr = 3
       GO
---------------------------------------------------------
---9)criar view para consultar  todos os   funcionarios  que são  supervisores
---Saida id do supervisor , o nome , CPF e salário 
---usar inner join

CREATE VIEW v_supervisores
as
    SELECT P.idPessoa Codigo, P.nome supervisor, P.cpf CPF,
        F.salario,
        case status 
              when 1 then  'Ativo'
              when 2 then  'Cancelado'
              end Situacao
    FROM Pessoas P inner JOIN Funcionarios  F
        on P.idPessoa = F.supId 
              GO

-------- testar  a view 

SELECT *
FROM v_supervisores 
           GO

-----------------------------------------------------------------
---10) criar view para consultar todos  os estagiarios. Saida  id 
-- do estagiario , o nome , CPF , status e bolsa
---Usar Inner join 

CREATE VIEW v_estagiarios
as
    SELECT P.idPessoa Codigo, P.nome Estagiario,
        P.cpf CPF, E.bolsaEst  Bolsa,
        case status 
       when 1 then  ' Ativo'
       when 2 then 'Cancelado'
       end Situacao
    from Pessoas P inner JOIN Estagiarios E
        on P.idPessoa = E.pessoaId 
       go
--- testar view 
SELECT *
from v_estagiarios 
go
-----11) Alterar uma view para exibir todos os pedidos . A saida mostrar 
--id do pedido , data do pedido , nome do cliente que fez o pedido,
---nome  do Estagiario  que Participou  o pedido , CPF do vendedor, Estagiario,
---que fez o pedido , a renda do Cliente que o pedido , valor total do pedido.
---juntar as tabelas pedidos com as view v_clientes e v_funcionarios
--------------------------------------------------------
ALTER view v_pedidos
as
    SELECT P.idPedido Nr, P.data DATA,
        C.Cliente Cliente, C.Renda Renda,
        F.Vendedor, F.CPF, E.Estagiario Estagiario,
        E.CPF CPF_Est, P.valor,
        case status 
               when 1  then 'Ativo'
               when 2  then 'Entregue'
               when 2 then  'Cancelado'
               else 'Pendente'
              end [Situacao Pedido]
    FROM Pedidos P, v_clientes C, v_funcionarios F,
        v_estagiarios E
    WHERE P.clienteId = C.Codigo
        and P.funcionarioid = F.Codigo
        and P.estagiarioId = E.Codigo  
       go

--------testar  a view 
SELECT *
FROM v_pedidos
      GO
-----12) criar uma view para selecionar os dados dos pedidos e pedidos e calcular o total 
-----de cada pedido 

CREATE view v_total_pedido
as
    SELECT Nr Pedido, SUM(Valor_Item) Total
    FROM v_itens
    GROUP BY Nr
   GO
----- testar a view 
SELECT *
FROM v_itens
GO
-------------------------------------------------------
---13) criar  uma view para selecionar os dados dos pedidos  e calcular o total 
-- de cada pedido. Saida n° pedido, Cliente que fez o pedido, o vendedor que 
-----registrou o pedido,

CREATE view v_peds
as
    SELECT P.Nr Pedido, P.DATA DATA, T.Total,
        P.Cliente Cliente, P.Vendedor Vendedor,
        P.Estagiario Estagiario, P.[Situacao Pedido]
    FROM v_pedidos P inner join v_total_pedido T
        on P.Nr = T.Pedido
GO

----- testar a view 
SELECT *
FROM v_peds
GO
-----------------------------------------------------------------
STARTED PROCEDURE
--------------------------------------------------------------
-------------------------------------------
--criar uma procedure para cadastrar clientes, lembrando que 
--cliente é  uma pessoa. portanto, tem que cadastrar pessoa para
---depois cadastrar cliente
-----------------------------------------------------------------
 CREATE PROCEDURE sp_cadCliente
 (
     @nome VARCHAR(50),
     @cpf VARCHAR(12), 
     @status int,
     @renda DECIMAL (10,2)
)
 as  
 BEGIN
 -----cadastrar pessoa
 INSERT into Pessoas (nome , cpf , status )
 VALUES         (@nome, @cpf, @status)
 -------cadastrar cliente:  é necessario captuar o idpessoa gerado
 insert into  Clientes (pessoaId, renda,  credito)
 VALUES                 (@@IDENTITY, @renda, (@renda * 0.25))
 END
 go 

 SELECT * FROM  v_clientes
go 
--------cadastrar um novo cliente 

exec  sp_cadCliente 'Robin', '25263641478', 1, 3500
go
 ----- criar uma  procedure  para cadastrar  produtos 

 CREATE  PROCEDURE sp_cadProdutos 

 (----parametros recebidos 
 @descProd   VARCHAR  (50),
 @valorProd       DECIMAL (10,2),
@qdeProd          int,
@statusProd       int 
 )
 as   
 BEGIN
 insert into Produtos (descricao, valor qtd, STATUS)
 VALUES     (@descProd, @valorProd, @qdeProd, @statusProd)
 end 
 GO
 -----cadastrar produtos
 EXEC sp_cadProdutos 'Impressora', 1500.00, 10, 1
 go
 exec sp_cadProdutos 'ssd'
   

   -----------------criar uma procedure  para cadastrar estagiario . lembrando  que 
   ---estagiario é uma pessoa . portanto , tem que cadastrar pessoa para depois cadastrar estagiario 

    create PROCEDURE sp_cadEstagiario 

( 
    @nome VARCHAR(50) , @cpf  VARCHAR (12),  @status int,
    @bolsa DECIMAL (10,2)

)
as  
BEGIN

-----insert na tabela  pessoa
INSERT into pessoa  (nome, cpf, status )
(@nome, @cpf, @status)
INSERT na tabela  estagiario usar o idpessoa gerado 
INSERT into Estagiario (pessoaId, bolsaEst)
VALUES      (@@IDENTITY,  @bolsa)
end  
go 
    
EXEC sp_cadEstagiario 'Tarzan', '21436587932', 3 1525.60
GO

SELECT * FROM v_estagiarios


EXEC sp_cadEstagiario 'Frozen' '65878902501', 1, 1890.60
GO 
SELECT * FROM  v_estagiarios
GO



criar uma PROCEDURE 





CREATE  PROCEDURE sp_cadFuncionario
( -----parametros  recebidos 
   @nome VARCHAR  (50),      @ CPF VARCHAR (12), 
    @status  int,        @salario DECIMAL (10,2),
    @nomesup VARCHAR (50) 

    )
as   
BEGIN 
---- buscando o id do supervisor  para cadastar o 
----supervisor   do funcionario 
DECLARE @idSup  INT;
SELECT @idSup = P,idPessoa 
FROM Pessoas P,Funcionarios F 

GO




















 