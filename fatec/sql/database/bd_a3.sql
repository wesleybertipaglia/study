create database VendasBD
go

use VendasBD
go

create table Pessoas
(	id		int			not null	primary key			identity,
	nome	varchar(50) not null,
	cpf		varchar(14) not null	unique,
	status	int				null,
	check (status in (1,2,3,4))
)
go

create table Clientes
(	pessoaId	int					not null	primary key,
	renda		decimal(10,2)		not null	check (renda > 700),
	credito		decimal(10,2)		not null	check(credito >100),
	foreign key (pessoaId)			references  Pessoas(id)
)
go

create table Vendedores
(	pessoaId	int				not null	primary key,
	salario		decimal(10,2)   not null	check(salario > 1000.00),
	foreign key (pessoaId)			references  Pessoas(id)
)
go

exec sp_help Clientes -- help é a procedure 
go

insert into Pessoas (nome, cpf, status)
values ('Valeria Volpe', '123.456.789-10', 1)
go


insert into Pessoas values ('Miguel', '125.458.752-10', 2)
go

select * from Pessoas
go

create table Pedidos
(	idPedido		int				not null	primary key			identity,
	data	 		datetime		not null,
	valor			decimal(10,2)	    null,
	status			int					null	check (status between 1 and 4),
	idVend			int				not null	references Vendedores(pessoaId),
	idCli			int				not null	references Clientes(pessoaId)
)
go

create table Produtos
(	idProduto		int				not null	primary key			identity,
	descrição 		varchar(100)	not null,
	qtd				int				    null	check (qtd >= 0),
	valor			decimal(10,2)		null	check (valor > 0),
	status			int					null	check (status between 1 and 4),
	
)
go

create table Itens_Pedidos
(	pedido_id		int				not null	references Pedidos(idPedido),
	produto_id 		int				not null	references Produtos(idProduto),
	qtd				int				    null	check (qtd > 0),
	valor			decimal(10,2)		null	check (valor > 0),
	primary key (pedido_id, produto_id)
	
)
go

select * from Pessoas
go

insert into Pessoas values ('Pedro Augusto', '125.458.752-13', 1)
go

insert into Pessoas values ('Maria Helena', '125.458.752-14', 1)
go


insert into Clientes (pessoaId, renda, credito)
values (2, 5000.00, 1500.00)
go

insert into Clientes (pessoaId, renda, credito)
values (4, 4000.00, 1200.00)
go

select * from Clientes
go

select p.nome Nome, C.renda [Renda Cliente]-- traz a coluna renda e cliente 2 nomes
from Pessoas P, Clientes C
where p.id = C.pessoaId
go

insert into Vendedores (pessoaId, salario)
values (1, 2500.00), (3, 1800)
go

select * from Vendedores
go



----------------------------------------------------------------
-- 1) Criar uma procedure para cadastrar Clientes.
-- Lembrando que todo Cliente é uma Pessoa. Portanto, 
-- precisamos cadastrar Pessoa também
-----------------------------------------------------------------

create procedure sp_CadCliente(
		@nomeCli varchar(50), @cpfCli varchar(14), 
		@sts int, @rendaCli decimal(10,2)
)
as
begin 
		-- cadastrando Pessoa
		insert into Pessoas (nome, cpf, status)
		values (@nomeCli, @cpfCli, @sts)
		-- cadastrando Cliente
		insert into Clientes (pessoaId, renda, credito)
		values (@@IDENTITY, @rendaCli, @rendaCli * 0.30)
end 
go


---------------------------------------------------------------
-- execução da prodedure
----------------------------------------------------------------

exec sp_CadCliente 'Joao Pedro', '125.487.963-12', 1, 4500.00
go


----------------------------------------------------------------------
--testar a procedure
-----------------------------------------------------------

select	p.id Codigo,p.nome Nome,
		c.renda [Renda Cliente], C.credito[Credito Cliente]				
from	Pessoas P, Clientes C
where	p.id = C.pessoaId
go


----------------------------------------------------------------
-- 2) Criar uma procedure para cadastrar Vendedores.
-- Lembrando que todo Vendedor é uma Pessoa. Portanto, 
-- precisamos cadastrar Pessoa também
-----------------------------------------------------------------

create procedure sp_CadVendedor(
		@nomeVend varchar(50), @cpfVend varchar(14), 
		@sts int, @salarioVend decimal(10,2)
)
as
begin 
		-- cadastrando Pessoa
		insert into Pessoas (nome, cpf, status)
		values (@nomeVend, @cpfVend, @sts)
		-- cadastrando Vendedor
		insert into Vendedores(pessoaId, salario)
		values (@@IDENTITY, @salarioVend)
end 
go



---------------------------------------------------------------
-- execução da prodedure
---------------------------------------------------------------- NAO FUNCIONAOU

exec sp_CadVendedor 'Ana Maria', '185.427.963-14', 1, 2400.00
go


----------------------------------------------------------------------
--testar a procedure
-----------------------------------------------------------

select	p.id Codigo,p.nome Nome,
		V.salario [Salario Vendedor]				
from	Pessoas P, Vendedores V
where	p.id = V.pessoaId
go



----------------------------------------------------------------
-- 3) Criar uma procedure para cadastrar Produtos

-----------------------------------------------------------------

create procedure sp_CadProduto(
	@desc varchar(100), @qde int, @valorProd decimal(10,2),
	@sts int
)
as 
begin
	insert into Produtos (descrição, qtd, valor, status)
	values (@desc, @qde, @valorProd, @sts)
end
go


-- executar a procedure

exec sp_CadProduto 'Coca Cola', 100, 5.00, 2

exec sp_CadProduto 'Chocolate', 150, 15.00, 1
exec sp_CadProduto 'Sorvete de Baunilha', 200, 25.00, 3
exec sp_CadProduto 'Agua com gas', 50, 3.00, 2
exec sp_CadProduto 'Doce de leite', 1000, 2.00, 1
go



-- testando a procedure

select * from Produtos
go

drop procedure sp_CadProduto
drop table Produtos
go


----------------------------------------------------------------
-- 4) Criar uma procedure para cadastrar Pedidos
-----------------------------------------------------------------
create procedure sp_CadPedido(
	@sts int, @idVend int, @idCli int
)
as
begin
	insert into Pedidos (data, status, idVend, idCli)
	values (GETDATE(), @sts, @idVend, @idCli)
end
go



----------------------------------------------------------------
-- executar a procedure

-----------------------------------------------------------------

exec sp_CadPedido 1, 3, 2

exec sp_CadPedido 2, 6, 2
exec sp_CadPedido 1, 1, 2
exec sp_CadPedido 1, 3, 4
exec sp_CadPedido 1, 6, 4
exec sp_CadPedido 2, 1, 5
go


----------------------------------------------------------------
-- testar a procedure
-----------------------------------------------------------------

select * from Pedidos
go



----------------------------------------------------------------
-- 5) Criar uma procedure para cadastrar Itens dos Pedidos
----------------------------------------------------------------- 

create procedure sp_CadItensPedidos(
	@idPed int, @idProd int, @qde int
)
as
begin
-- declaração de uma variável
	declare @valorProd decimal(10,2)
	-- consultando a tabela de produtos para trazer o valor de um produto
	select @valorProd = valor from Produtos
	where idProduto = @idProd
	-- inserir o item do pedido
	insert into Itens_Pedidos (pedido_id, produto_id, qtd, valor)
	values (@idPed, @idProd, @qde, @valorProd)
end
go


-- executar a procedure
--pedido 1
exec sp_CadItensPedidos 1, 1, 20

exec sp_CadItensPedidos 1, 5, 10
exec sp_CadItensPedidos 1, 3, 50
exec sp_CadItensPedidos 1, 2, 5

--pedido 2
exec sp_CadItensPedidos 2, 4, 20
exec sp_CadItensPedidos 2, 1, 10
exec sp_CadItensPedidos 2, 5, 5

--pedido 3
exec sp_CadItensPedidos 3, 3, 20
exec sp_CadItensPedidos 3, 5, 10

--pedido 4
exec sp_CadItensPedidos 4, 5, 10
exec sp_CadItensPedidos 4, 2, 20


--pedido 5
exec sp_CadItensPedidos 5, 3, 30
exec sp_CadItensPedidos 5, 2, 40


--pedido 6
exec sp_CadItensPedidos 6, 2, 5
go

--
select * from Itens_Pedidos
go



----------------------------------------------------------------
-- 6) Criar uma procedure para dar baixa em estoque
----------------------------------------------------------------- 

create procedure sp_baixarEstoque(
	@idProd int, @qtdeVendida int
)
as
begin
	update Produtos set qtd = qtd - @qtdeVendida
	where idProduto = @idProd and qtd >= @qtdeVendida
end
go



----------------------------------------------------------------
-- executar procedure
----------------------------------------------------------------- 

exec sp_baixarEstoque 2, 50
go

exec sp_baixarEstoque 4, 150
go


select * from Produtos
go



---------------------------------------------------------------------------------
-- TRIGGER
-------------------------------------------------------------------------------

select * from Pessoas
select * from Clientes
select * from Vendedores
select * from Produtos
select * from Pedidos
select * from Itens_Pedidos
go


-----------------------------------------------------------------------------------------
-- 1. Criar uma tabela para fazer "Log" de histórico de preço dos
-- produtos. Será feito um insert nesta tabela toda vez que um preço
-- for alterado
------------------------------------------------------------------------------------------

create table LogHistPrecos
(
	idHist		int			not null,
	data		datetime	not null,
	precoAntigo	money		not null,
	precoNovo	money		not null,
	usuario		varchar(50)	not null,
	primary key (idHist, data)
)
go

-----------------------------------------------------------------------------------------
-- 2. Criar uma trigger que execute a inserção de dados na tabela
-- LogHistPrecos sempre que ocorrer um update na tabela de Produtos
-- para atualizar os preços dos produtos.
-- Tipo de Trigger: AFTER
------------------------------------------------------------------------------------------

create trigger tr_gravaPreco
on Produtos
after	update
as
begin
	insert into LogHistPrecos
	select I.idProduto, GETDATE(), D.valor, I.valor, SYSTEM_USER --System_user é o usuario que fez login na maquina
	from deleted D, inserted I
	where D.idProduto = I.idProduto
end
go

-- testar: alterar preço de todos os produtos com valor menor que 10.00
-- dar 5% de aumento

update Produtos set valor = valor * 1.05
where valor < 10.00
go

update Produtos set valor = 3.15 where idProduto = 4
go

update Produtos set status = 1 where idProduto = 5
go

select * from Produtos
go

select * from LogHistPrecos
go

------------------------------------------------------------
--3. LogHistPrecos sempre que ocorrer um update na cadeia de Produtos
-- para atualizar os preços de produtos. Objetivo: Evitar que produtos
-- que não sofreram alteração de preço sejam registrados na tabela de Log
-- Tipo de Trigger: AFTER
--------------------------------------------------------------


alter trigger tr_gravaPreco
on Produtos
after	update
as
begin
	insert into LogHistPrecos
	select I.idProduto, GETDATE(), D.valor, I.valor, SYSTEM_USER --System_user é o usuario que fez login na maquina
	from deleted D, inserted I
	where D.idProduto = I.idProduto and
		  D.valor = I.valor	
end
go

-- testar as alterações no trigger

update Produtos set valor = 25.00 where idProduto = 3
go


update Produtos set status = 1 where idProduto = 4 ---verficar qual o ultimo produtos cadastrado o código
go

select * from Produtos
go

------------------------------------------------------------
--4.Criar um TRIGGER para quando ocorrer uma exclusão física
-- delete na tabela pessoas, ocorra uma atualização do status
-- da pessoas para 2 (inativo)
-- Tipo de Trigger: INSTEAD OF
--------------------------------------------------------------

create trigger tr_deletaPessoas
on Pessoas
instead of delete --quando for ocorrer uma operação de delete
as
begin
	update Pessoas set status = 2 -- a trigger vai mudar o status e não deletar
	where id in
	(
		-- obtendo os id's das pessoas que estão tentando excluir
		select id from deleted
	)
end
go

select * from Pessoas
go

-- Testar o Trigger alterando o status das Pessoas com id 5 e 6
delete from Pessoas where id in (5,6)
go


-- aqui eu posso testar e voltar todas as pessoas para status 1 e executo novamentes as Trigger para ver ela rodando
update Pessoas set status = 1
go


------------------------------------------------------------
-- 5.Criar uma tabela para fazer uma cópia dos produtos que são
-- inseridos na tabela. Para ter uma tabela de "log" da inserção
-- de novos produtos
--------------------------------------------------------------

create table CopiaProdutos
(
	idProd			int				not null primary key,
	descricao		varchar(50)		not null,
	qtd				int				not null,
	valor			money			not null,
	status			int				not null,
	data			datetime		not null,	
	usuario			varchar(50)		not null
)
go

------------------------------------------------------------
-- 6. Criar um Trigger para cadastrar todas as inserções de produtos
-- na tabela produtos, com o objetivo de ter controle de cadastro de
-- novos produtos
--------------------------------------------------------------

create trigger tr_logInsertProduto
on Produtos
after insert -- a operação é insert e a trigger é after
as
begin
	insert into CopiaProdutos -- inserir tudo o que estiver
	select *,  GETDATE(),SYSTEM_USER --System_user é o usuario que fez login na maquina
	from inserted
	
end
go

-- testando 


insert into Produtos values ('Tesoura', 100, 15.50,1)
go

insert into Produtos values ('Pen Drive 32Gb', 15, 35.90, 1)
go

select * from Produtos
go


select * from CopiaProdutos
go

------------------------------------------------------------------
-- 7. Criar um Trigger para quando ocorrer uma exclusão física
-- (delete) na tabela produtos com estoque igual a Zero, ocorra uma
-- atualização do status do Produto para 2 (inativo)
-- tipo de Trigger: INSTEAD OF
---------------------------------------------------------------------

create trigger tr_deletaProduto
on Produtos
instead of delete -- Tipo Trigger: Instead Of / Operação: delete  substituta: Update
as
begin
	update Produtos set status = 2
	where idProduto  in
	(
		-- obtem-se os códigos deletados
		select d.idProduto from deleted d
		where d.qtd = 0 and d.status = 1
	 )
end
go


--testando
-- Testar o Trigger excluindo produtos. Para isso atualizaremso o estoque
-- de alguns produto para ver o trigger sendo separado


select * from Produtos
go

-- atualização do estoque
update Produtos set qtd = 0 where idProduto > 2 and idProduto < 5
go

-- exclusão do produto ==>> dispara o trigger
delete from Produtos where idProduto in (4,5)
go

update Pedidos set valor = 0
go


------------------------------------------------------------------
-- 9. Criar duas tabelas para controlar os pedidos finalizados.
-- Colocar os pedidos finalizados (status = 2 ) na tabela de pedidos
-- finalizados e colocar todos itens dos pedidos finalizados em uma
-- tabela de itens finalizados
---------------------------------------------------------------------

create table Pedidos_Finalizados
(
	idPedFin		int			not null		primary key,
	data			datetime	not null,
	valor			money			null,
	status			int			not null,
	vendedorId		int			not null		references vendedores,
	clienteId		int			not null		references clientes
	
)
go

create table Itens_Finalizados
(
	pedidoId		int			not null		references Pedidos_finalizados,
	produtoId		int			not null		references Produtos,
	qtdVendida		int			not null,
	precoVenda		money		not null,
	primary key		(pedidoId,produtoId)
)
go


------------------------------------------------------------------
-- 10. Criar um trigger para mover os pedidos finalizados e seus respectivos
-- itens para as tabelas de pedidos e itens finalizados
---------------------------------------------------------------------
create trigger tr_moverPedidosFinalizados
on Pedidos
after update 
as 
begin
-- status do pedido alterado para 2, os dados do pedido irão para tabela
-- pediso finalizados
insert into Pedidos_Finalizados
select * from Pedidos pe
where pe.idPedido in
(
	select i.idPedido
	from inserted i
	where i.status = 2
)
-- status do pedido alterado para 2, os dados do itens pedido irão para tabela
-- itens pedidos finalizados
insert into Itens_Finalizados
select * from Itens_Pedidos
where pedido_id in ----**** VERIFICAR NOME DA VARIAVEL pedId professora
(
	select i.idPedido
	from inserted i
	where i.status = 2
)


-- excluir os intes dos pedidos finalizados da tabela Itens_Pedidos
delete from Itens_Pedidos
where pedido_id in

(
	select i.idPedido
	from inserted i
	where i.status = 2
)

-- excluir os pedidos finalizados da tabela Pedidos
delete from Pedidos
where idPedido in
(
	select i.idPedido
	from inserted i
	where i.status = 2
)
end
go

select * from Pessoas
select * from Clientes
select * from Pedidos_Finalizados
select * from Itens_Finalizados
select * from Pedidos
go

update Pedidos set status = 1
go

update Pedidos set status = 2 where idPedido = 6
go

-----------------------------------------------------------------
-- 11. Criar um trigger para verificar se é possível atender um pedido, verificando
-- a quantidade dos produtos em estoque. Se for possível, irá cadastrar o pedido
-- cadastrar os itens do pedido e dar baixa no estoque
---------------------------------------------------------------------

create trigger tr_baixarEstoque
on Itens_Pedidos
instead of insert
as 
begin

-- inserindo o item do produto na tabela de itens de pedidos só se tiver
-- qtd no estoque
	insert into Itens_Pedidos
	select i.*
	from inserted i, Produtos p
	where i.produto_id = p.idProduto and p.qtd >= i.qtd

-- atualizar a tabela de produtos baixando estoque
update Produtos set qtd = qtd -
(
	select i.qtd
	from inserted i
	where i.produto_id = Produtos.idProduto
	and Produtos.qtd >= i.qtd
)
where idProduto in
(
	select i.produto_id
	from inserted i
	where i.produto_id = Produtos.idProduto
	and Produtos.qtd >= i.qtd
)
end
go

select * from Produtos
go

select * from Pedidos
go

select * from Itens_Pedidos
go

insert into Pedidos (data, idCli, idVend) values (getdate(), 4, 6)
insert into Itens_Pedidos values (7, 6, 8, 25.00) -- verificar
go

insert into Pedidos (data, idCli, idVend) values (getdate(), 5, 3)
insert into Itens_Pedidos values (9, 5, 10, 35.00) -- verificar se há estoque para inserir o produto no pedido
go



-----------------------------------------------------------------
-- 12.Criar uma tabela para controlar produtos em falta no estoque, ou seja,
-- tem produto em estoque, mas não tem quantidade suficiente para atender
-- pedidos, portanto registrar esses produtos em uma tabela que controlar a
-- falta deles
---------------------------------------------------------------------

create table Produtos_em_Falta
(
	pedId			int			not null,
	prodId			int			not null,
	data			datetime	not null,
	descricaoProd	varchar(50) not null,
	qtdEstoque		int			not null,
	qtdPendente		int			not null,
	primary key		(prodId, pedId, data),
	foreign key		(prodId)		references Produtos (idProduto),
	foreign key		(pedId)			references Pedidos (idPedido)
)
go


select * from Produtos
go

select * from Pedidos
go
-----------------------------------------------------------------
-- 13.Alterar o trigger para verificar se é possível atender um pedido, verificando
-- a quantidade dos produtos em estoque. Se for possível, irá cadastrar o pedido
-- cadastrar os itens do pedido e dar baixa no estoque e controlando os produtos 
-- em falta para possível compra
---------------------------------------------------------------------

alter trigger tr_baixarEstoque
on itens_pedidos
instead of insert
as
begin
--  inserindo o item do produto na tabela de itens de pedidos só se tiver
-- qtd no estoque
insert into Itens_Pedidos
select i.*
from inserted i, Produtos p
where i.produto_id = p.idProduto and p.qtd >= i.qtd

-- atualizar a tabela de produtos baixando estoque
update Produtos set qtd = qtd -
(
	select i.qtd
	from inserted i
	where i.produto_id = Produtos.idProduto
	)
	where idProduto in
	(
		select i.produto_id
		from inserted i
		where i.produto_id = Produtos.idProduto
		and Produtos.qtd >= i.qtd
	)

	insert into Produtos_em_Falta
	select i.pedido_id, i.produto_id, getdate(), p.descrição, p.qtd,
	i.qtd - p.qtd
	from inserted i, Produtos p
	where i.produto_id = p.idProduto and i.qtd > p.qtd

end
go


insert into Pedidos (data, idVend, idCli) values (getdate(), 6, 5) -- criar um pedido e incluir um produto que não tenha estoque suficiente
insert into Itens_Pedidos values (9, 6, 14, 25.00) -- idpedido/idproduto/qtd/valor
go


select * from Produtos
go

select * from Pedidos
go

select * from Itens_Pedidos
go

select * from Produtos_em_Falta
go
