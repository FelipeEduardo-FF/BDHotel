Create table Tb_TipoQuarto
(
	IdTipoQuarto int identity(1,1),
	DescricaoTipo varchar(20),

	primary key (IdTipoQuarto)
)

Create table Tb_Comodo
(
	IdComodo int identity(1,1),
	DescricaoComodo varchar(20),
	
	Primary key (IdComodo)
)

Create table Tb_ComodoDeQuarto
(
	IdComodo int,
	IdTipoQuarto int,
	Quantidade int

	primary key (IdComodo,IdTipoQuarto)
)


Create table Tb_Quartos
(
	NumeroQuarto int,
	Andar int,
	DescricaoQuarto varchar(20),
	ValorDiaria numeric(9,2),
	IdTipoQuarto int

	Primary key (NumeroQuarto)
	Foreign key (IdTipoQuarto) references Tb_TipoQuarto(IdTipoQuarto)
)