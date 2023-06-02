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
	foreign key(cnpj) references Player(cnpj) on delete cascade
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
	foreign key (cpf) references Leitor(cpf) on delete cascade
)


CREATE TABLE Moderador(
	cpf char(11),
	senha varchar(50),
	plataforma char(11) not null,
	
	primary key(cpf),
    foreign key(plataforma) references Plataforma_distribuidora(cnpj) on delete cascade
)

CREATE TABLE Acessa(
	player_cnpj char(14),
	player_isbn char(10),
	leitor char(11),
	
	primary key(player_cnpj, player_isbn, leitor),
    foreign key(player_cnpj) references Player(cnpj) on delete cascade,
    foreign key(player_isbn) references Player(isbn) on delete cascade,
    foreign key(leitor) references Leitor(cpf) on delete cascade
	
)

CREATE TABLE Estudio_de_gravacao(
	cnpj char(14),
	nome varchar(30),
	rua varchar(20),
	cep char(8),
	numero integer,
	
	primary key(cnpj)
);


CREATE TABLE Editora(
	cnpj char(14),
	nome varchar(30),
	livros_publicados integer,
	publico_alvo varchar(30),
	cep char(8),
	rua varchar(30),
	numero integer,

	primary key(cnpj)
);


CREATE TABLE Produtor(
	cpf char(11),
	genero_especialist varchar(20),

	primary key(cpf)
);

CREATE TABLE Livro(
	isbn char(10),
	titulo varchar(50),
	autor varchar(50),
	edicao integer,
	editora char(14) not null,
    produtor char(11),


	primary key(isbn),
	foreign key(editora) references Editora(cnpj),
	foreign key(produtor) references Produtor(cpf) on delete set null

);

CREATE TABLE Livro_adaptado(
	isbn char(10),
	isbn_livro char(10) not null,
	titulo varchar(30),
	idioma varchar(30),
	autor varchar(30),
	tamanho_arquivo double precision,
	genero varchar(50),
	duracao double precision,
    classificacao integer,
    descricao varchar(500),
	

	primary key(isbn),
    foreign key(isbn_livro) references Livro(isbn) on delete cascade
);

CREATE TABLE Audiobook(
	isbn char(10),
	titulo varchar(30),
	idioma varchar(30),
	autor varchar(30),
   	duracao double precision,
    formato char(4),
    classificacao integer,
	genero varchar(50),
    descricao varchar(500),
	livro_adaptado char(10) not null,

	primary key(isbn),
    unique(livro_adaptado),
    foreign key(livro_adaptado) references Livro_adaptado(isbn)
);

CREATE TABLE Servico(
	codigo integer,
	cnpj_estudio char(14) not null,
	isbn char(10) not null,
	
	primary key(codigo),
	foreign key(cnpj_estudio) references Estudio_de_gravacao(cnpj),
	foreign key(isbn) references Audiobook(isbn)
);








