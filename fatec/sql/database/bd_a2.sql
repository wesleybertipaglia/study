create database VendasBD go
use VendasBD go

create table  logHistPrecos
(
   idHist   int   not null,
   data     datetime  not null, 
   precoAntigo money not null,
   precoNovo money  not null,
   usuario varchar (50) not null
   primary key (idHist, data)
)
go  

-- 2 criar um trigger que execute a insercao de dados na tabela 
---Loghistipreco  sempre que ocorrer um update na tabela de produtos  
----para atulizar os precos dos produtos.
---- tipo de trigger ;AFTER
----------------------------------------------------------------------------
 create  trigger tr_gravaPreco
 on Produtos
 after update 
 as
 begin
      insert into logHistPrecos
	  select I.idProd, GETDATE (), D.valor, I.valor, SYSTEM_USER
	  from deleted D, inserted I
	  where D.idProd = I.idProd
 end 	

go 

----testar ; alterar preco  de todos os prudutos com valor menor que 10,00
---- dar 5% de aumento 
update  Produtos set valor = valor * 1.05
where  valor <10.00
go

select * from Produtos
go

alter trigger tr_gravaPreco
on Produtos
after update
as 
begin
	insert into logHistPrecos
	select I.idProd, GETDATE(), D.valor, I.valor, SYSTEM_USER
	from deleted D, inserted I
	where D.idProd = I.idProd and D.valor != I.valor
end
go

/*
	cria um trigger para quando ocorrer uma execu��o f�sica
	(delete) na tabela pessoas, ocorra uma atualiza��o do status
	da pessoa para 2 (inativo)
	Tipo de trigger: instead of
*/
create trigger tr_deletaPessoas
on Pessoas
instead of delete 
as 
begin
	update Pessoas set status = 2
	where id in 
	(
		select id from deleted 
	)
end

delete from Pessoas where id in (5,6) 
go

update Pessoas set status = 1 
go

create table CopiaProdutos
(
	idProd int not null primary key,
	descricao varchar(50) not null,
	qtd int not null, 
	valor money not null,
	status int not null, 
	data datetime not null, 
	usuario varchar(50) not null
)
go

/*
	criar um trigger para cadastrar todas as inser��es de produtos na tabela

*/
create trigger tr_logInsertProduto
on Produtos
after insert 
as
begin
	insert into CopiaProdutos
	select *, GETDATE(), SYSTEM_USER
	from inserted
end
go

-- teste
select * from Produtos
go

insert into Produtos values ('Tesoura', 100, 15.5, 1)
go

select  * from CopiaProdutos
go

/* 
	criar um trigger para quando ocorrer uma exclus�o f�sica
	(delete) na tabela produtos com estoque igual a zero, ocorra
	uma atualiza��o do status do produto para 2 (inativo)
	Tipo: trigger: instead of
*/

create trigger tr_deletaProduto
on Produtos 
instead of delete
as 
begin
	update  Produtos set status = 2
	where idProd in 
	(

	-----obtem-se os codigos deletados 
		select d.idProd from deleted d
		where d.qtd = 0 and d. status = 1 
	)
end
go
  -----  testar o trigger excluindo produtos . para isso atualizaremos o estoque 
  --- de alguns produtos  para ver o trigger sendo disparado 
  select * from Produtos 
  go 


 ----- exclusao do produto == >> dispara o trigger 
 delete from Produtos  where  idProd in (4,5)
 go 
  update  pedidos set valor = 0
  go 


  ---9 criar duas tabelas para controlar os pedidos finalizados .
  ---colocar os pedidos finalizados (status = 2) na tabela de pedidos 
  ---finalizados e colocar todos itens dos pedidos finalizados em uma 
  ---tabela de itens finalizados 
  ----------------------------------------------------------------------
  create table Pedidos_Finalizados 
  ( 
  idPedFin int not null  primary key, 
   data  datetime  not null,
   status  int not null,
   valor money  null,
   clienteId int not null  references clientes,
   vendedorId int not null references vendedores 
   )
   go
    create table Itens_Finalizados 
( 
pedidoId   int not null references Pedidos_finalizados,
produtoId int not null references Produtos,
qtdVendida  int not null,
precoVenda money not null,
primary key (pedidoId, produtoId)
)
go