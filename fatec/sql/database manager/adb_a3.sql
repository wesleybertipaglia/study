use VendasBD
go

--1-

create function reajustar (@valor money , @taxa decimal (10,2)) --
returns money
as 
begin
	return (@valor * (1+(@taxa/100)))
end
go


--teste
select dbo.reajustar (100,75) resultado -- aumento de 75% no valor
go

select dbo.reajustar (100,-75) Resultado --desconto de 75% no valor
go

select p.*,dbo.reajustar(p.valor,10) Preco_Novo
from Produtos p
go

----
--Usar a função para  aplicar um aumento de 5% em todos os produtos da tabela
----

update Produtos set valor = dbo.reajustar(valor,5)
go

select * from Produtos
go

----
--Usar a função para aplicar um desconto de 10% em todos os produtos da tabela
----
update Produtos set valor = dbo.reajustar(valor,-10)
go

select * from Produtos
go

----
--Usar a função para dar um aumento de 10% PARa UM PRODUTO EM ESPECIFICO
----
update Produtos set valor = dbo.reajustar(valor,10)
where idProduto = 11
go

select * from Produtos 
go

update Produtos set valor = dbo.reajustar(valor,10)
where idProduto = 4
go

select * from Produtos 
go

---
--2 exemplo criar uma função
--

create function calcular25(@valor money)
returns money
as
begin
	return (dbo.reajustar(@valor, -75))
end
go

--teste
select dbo.calcular25(1000) Resultado
go

---
--3 criar uma tabela para armazenar o valor dos impostos pagos esta tabela terá 
--uma coluna baseada na execucao de uma funcao sempre  quew ocorre um insert 
--na tabela, a funçaõ sera executada e a coluna sera calcyulada
----
create table Impostos
(
	idImpostos int not null primary key identity,
	valor money not null,
	imposto 
	as  dbo.calcular25(valor)
)
go

--testar
insert into Impostos (valor) values (1000)
go

select * from Impostos
go

--
--4 criar uma função para calcular o total dos pedidos realizados
---
select * from Itens_Pedidos
go

create function calcularTotalPedidio(@idPed int)
returns money
as
begin
	return (
		select sum (qtd + valor)
		from Itens_Pedidos
		where pedidoId = @idPed
	)
end
go

--testar
select dbo.calcularTotalPedidio(8)Total
go

select * from Pedidos
go

update Pedidos set valor = dbo.calcularTotalPedidio (1)--calcula apenas o total do pedido 1
where idPedido = 1
go

update Pedidos set valor = dbo.calcularTotalPedidio (idPedido)--calcula o total de todos os pedidos
go

--
--5 criar uma procedure que finaliza pedidos usnado a função para
--calcular o valor total do pedido ao finaliza-lo (status = 2)
--

select * from Pedidos
go

update Pedidos set valor = null
go

create procedure sp_CalcTotalpedido (@idPed int)
as
begin
	update Pedidos set valor = dbo.calcularTotalPedidio(@idPed), status = 2
	where idPedido = @idPed and status = 1
end
go

--testar

exec sp_CalcTotalpedido 5
go

--
--6
--

select * from Produtos
go

create function consultPrecoProduto(@preco money)
returns table
as 
	return 
	( select idProduto Codigo, descricao Produto, qtd Estoque, valor Preco
		 from Produtos
		 where valor > @preco
	 )
go

--testar
select * from consultPrecoProduto(10)
go

----
--7 criar uma funçaõ para retornar todos os pedidos de um determinado cliente
--os dados do cliente serão passados por  parametro 
----
create function ConsultarPedidosCliente(@idCli int )
returns table
as 
	return
	(
		select P.nome Cliente, Pe.idPedido Codigo, Pe.valor Total, Pe.status
		from Pessoas P, Pedidos Pe
		where P.idPessoa = @idCli and Pe.clienteId = @idCli
	)
go

--testar
select * from Pedidos
go

select * from ConsultarPedidosCliente(3)
go

select * from Vendedores
go

select * from Clientes
go


-----
--Variaveis
-----

---
--variaveis do tipo simples (escalar)
---
declare @nomeProd varchar (50)
declare @precoProd decimal (10,2)
--set @nomeProd = 'chocolate'


select @nomeProd = descricao, @precoProd = valor
from  Produtos
where idProduto = 1

select @nomeProd, @precoProd
go

-----
--variaveis do tipo table
--
declare @produtinhos table
(
	Codigo int,
	Nome varchar(50),
	Preco decimal(10,2)
)

insert into @produtinhos values (10,'barrinha de cereal', 4.50)
insert into @produtinhos	select idProduto,descricao, valor
							from Produtos where valor> 15.00
select * from @produtinhos
go

---
--table-valued function
---

----
--tipo:2 retorna uma valor da tabela, ou seja, retorna uma tabela com 
--colunas definidos pelo DBA, usando uma variavel do tipo TABLE
----

---
--8 vriar uma funçaõ para consultar os produtos com preco acima de 
--um valor passado por um parametro e que retornará uma tabela usando 
--uma variavel do tipo tabela
-----
create function consultaPreco(@preco money)
returns @Prod table 
		(id int, prod varchar (50), preco money)
as
begin
	insert into @Prod select idProduto,descricao,valor
						from Produtos
						where valor> @preco
	return
end
go

--testar
select * from consultaPreco(8.00)
go
