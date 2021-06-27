create table Tb_Categoria
(
	IdCategoria int identity(1,1),
	DescricaoCategoria varchar(30)
	Primary key (IdCategoria)
)

create table Tb_Estoque
(
	IdEstoque int Identity(1,1),
	Coluna	int,
	Linha	int,
	DescricaoEstoque varchar(10)

	primary key(IdEstoque)
	
)


create table Tb_Produto 
(

	IdProduto int identity(1,1),
	DescricaoProduto varchar(30),
	ValorCompra numeric(9,2),
	ValorVenda numeric(9,2),
	QuantidadeProduto int,
	IdCategoria int,
	IdEstoque int,
	Comercializavel bit

	primary key(IdProduto),
	foreign key (IdCategoria) references Tb_Categoria(IdCategoria),
	foreign key (IdEstoque) references Tb_Estoque(IdEstoque)

)

