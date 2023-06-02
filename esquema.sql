CREATE TABLE Player(
	cnpj char(14),
	isbn char(10),
	
	primary key(cnpj, isbn),
	unique(cnpj),
	unique(isbn)
)

CREATE TABLE Plataforma_distribuidora(
	cnpj char(14),
	nome varchar(30),
	
	primary key(cnpj),
	foreign key(cnpj) references Player(cnpj)
)

CREATE TABLE Leitor(
	cpf char(11),
	nome varchar(30),
	login varchar(20),
	senha varchar(50),
	idioma_buscado varchar(20),
	
	primary key(cpf)	
)


CREATE TABLE Livros_favoritos(
	cpf char(11),
	favoritos varchar(30),
	
	primary key(cpf, favoritos),
	foreign key (cpf) references Leitor(cpf)
)



CREATE TABLE Moderador(
	cpf char(11),
	senha varchar(50),
	plataforma char(11) not null,
	
	constraint pk_moderador primary key(cpf),
        constraint fk_moderador foreign key(plataforma) references Plataforma_distribuidora(CNPJ)
)