create table Tb_Frigobar
(
	IdFrigobar int identity(1,1),
	IdQuarto	int,

	primary key(IdFrigobar),
	foreign key(IdQuarto) references Tb_Quartos(NumeroQuarto)
)

Create table Tb_ItemFrigobar
(
	IdFrigobar	int,
	IdProduto	int,
	Quantidade	int

	primary key (IdFrigobar,IdProduto)
)
