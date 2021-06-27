

create table TB_Reserva
(
	IdReserva int identity(1,1),
	IdPessoa int not null,
	IdQuarto int not null,
	NrAcompanhantes int,
	DtInicialReserva date,
	DtFinalReserva date,
	ValorPago numeric(9,2),
	ValorTotal numeric(9,2),
	statusReserva bit

	Primary key (IdReserva),
	foreign key (IdPessoa) references Tb_Pessoa(IdPessoa),
	foreign key (IdQuarto) references tb_Quartos(NumeroQuarto)

)

create table Check_in
(
	IdCheck_in int identity(1,1),
	DataHoraChek_in datetime,
	IdReserva int

	Primary key (IdCheck_in),
	foreign key (IdReserva) references Tb_Reserva(IdReserva),
)

create table Check_out
(
	IdCheck_out int identity(1,1),
	DataHoraChek_out datetime,
	IdReserva int,
	ValorTotal numeric(9,2),


	Primary key (IdCheck_out),
	foreign key (IdReserva) references Tb_Reserva(IdReserva),
)


