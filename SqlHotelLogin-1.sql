Create database Db_Hotel

Create table TB_Pessoa 
(
	IdPessoa int identity(1,1),
	NomePessoa varchar(30) not null,
	CpfPessoa varchar(11) not null,
	DataNascimento date,
	EmailPessoa varchar(30) not null,
	Senha varchar(10)not null,
	NivelAcesso int,
	primary key (IdPessoa) 
)

Create table Tb_Funcao
(
	IdFuncao int identity(1,1),
	NomeFuncao varchar(20),
	DescricaoFuncao varchar(50)
	primary key (IdFuncao) 
)

Create table Tb_Funcionario
(
	IdFuncionario int identity(1,1),
	DataContratacao date,
	IdFuncao int,
	SalarioFuncionario numeric(9,2),
	IdPessoa int,
	SituacaoCliente bit

	primary key (IdFuncionario), 
	foreign key (IdFuncao) references Tb_Funcao(IdFuncao),
	foreign key (IdPessoa) references Tb_Pessoa(IdPessoa)
)

Create table Tb_Cliente
(
	IdCliente			int identity(1,1),
	IdPessoa			int,
	SituacaoCliente		bit,
	Vip					bit

	primary key (IdCliente), 
	foreign key (IdPessoa) references Tb_Pessoa(IdPessoa)
)

