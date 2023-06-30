
CREATE TABLE Plataforma_distribuidora(
	cnpj char(14),
	nome varchar(30),
	num_usuarios integer,
	num_livros integer,
	
	constraint pk_plataforma_distribuidora primary key(cnpj)
);

CREATE TABLE Funcionarios(
	cpf char(11),
	nome varchar(50),
	tipo varchar(20),
	Salario number,
	
	constraint pk_funcionarios primary key(cpf)
);

CREATE TABLE Editora(
	cnpj char(14),
	nome varchar(30),
	livros_publicados integer,
	publico_alvo varchar(30),
	cep char(8),
	rua varchar(30),
	numero integer,

	constraint pk_editora primary key(cnpj)
);

CREATE TABLE Produtor(
	cpf char(11),
	genero_especialist varchar(20),

	constraint pk_produtor primary key(cpf),
	constraint fk_produtor foreign key(cpf) references Funcionarios(cpf)
);


CREATE TABLE Livro(
	isbn char(10),
	titulo varchar(50),
	autor varchar(50),
	edicao integer,
	editora char(14) not null,
    produtor char(11),


	constraint pk_livro primary key(isbn),
	constraint fk_livro_editora foreign key(editora) references Editora(cnpj),
	constraint fk_livro_produtor foreign key(produtor) references Produtor(cpf) on delete set null

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
	

	constraint pk_livro_adaptado primary key(isbn),
    constraint fk_livro_adaptdado foreign key(isbn_livro) references Livro(isbn) on delete cascade
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

	constraint pk_audiobook primary key(isbn),
    constraint sk_audiobook unique(livro_adaptado),
    constraint fk_audiobook foreign key(livro_adaptado) references Livro_adaptado(isbn)
);


CREATE TABLE Player(
	cnpj char(14),
	isbn char(10),
	
	constraint pk_player primary key(cnpj, isbn),
	constraint fk_player_cnpj foreign key(cnpj) references Plataforma_distribuidora(cnpj),
	constraint fk_player_isbn foreign key(isbn) references Audiobook(isbn)
);


CREATE TABLE Leitor(
	cpf char(11),
	nome varchar(30),
	login varchar(20),
	senha varchar(50),
	historico varchar(50),
	idioma_buscado varchar(20),
	
	constraint pk_leitor primary key(cpf)	
);


CREATE TABLE Livros_favoritos(
	cpf char(11),
	favoritos varchar(30),
	
	constraint pk_favoritos primary key(cpf, favoritos),
	constraint fk_favoritos foreign key (cpf) references Leitor(cpf) on delete cascade
);


CREATE TABLE Moderador(
	cpf char(11),
	senha varchar(50),
	plataforma char(14) not null,
	
	constraint pf_moderador primary key(cpf),
    constraint fk_moderador foreign key(plataforma) references Plataforma_distribuidora(cnpj) on delete cascade
);

CREATE TABLE Acessa(
	player_cnpj char(14),
	player_isbn char(10),
	leitor char(11),
	n_livros_ouvidos integer,
	
	constraint pk_acessa primary key(player_cnpj, player_isbn, leitor),
    constraint fk_acessa_cnpj_isbn foreign key(player_cnpj, player_isbn) references Player(cnpj, isbn) on delete cascade,
    constraint fk_acessa_leitor foreign key(leitor) references Leitor(cpf) on delete cascade
	
);

CREATE TABLE Estudio_de_gravacao(
	cnpj char(14),
	nome varchar(30),
	rua varchar(20),
	cep char(8),
	numero integer,
	
	constraint pk_estudio primary key(cnpj)
);

CREATE TABLE Servico(
	codigo integer,
	cnpj_estudio char(14) not null,
	isbn char(10) not null,
	
	constraint pk_servico primary key(codigo),
	constraint fk_servico_cnpj foreign key(cnpj_estudio) references Estudio_de_gravacao(cnpj),
	constraint fk_servico_isbn foreign key(isbn) references Audiobook(isbn)
);

CREATE TABLE Sala(
	cnpj_empresa char(14),
	numero integer,
	capacidade integer,
	
	constraint pk_sala primary key(cnpj_empresa, numero),
	constraint fk_sala foreign key(cnpj_empresa) references Estudio_de_gravacao(cnpj)
);



CREATE TABLE Contratam(
	codigo integer,
	cpf_funcionario char(11),
	
	constraint pk_contratam primary key(codigo, cpf_funcionario),
	constraint fk_contratam_codigo foreign key(codigo) references Servico(codigo),
	constraint fk_contratam_cpf foreign key(cpf_funcionario) references Funcionarios(cpf)

);


CREATE TABLE Dublador(
	cpf char(11),
	estilo_de_narracao varchar(30),
	idioma_nativo varchar(20),
	idioma_fluente varchar(20),
	idioma_intermediario varchar(20),
	
	constraint pk_dublador primary key(cpf),
	constraint fk_dublador foreign key(cpf) references Funcionarios(cpf) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Dubla(
	dublador char(11),
	livro_adaptado char(10),
	
	constraint pk_dubla primary key(dublador, livro_adaptado),
	constraint fk_dubla_dublador foreign key(dublador) references Dublador(cpf) ON DELETE CASCADE ON UPDATE CASCADE,
	constraint fk_dubla_livro_adaptado foreign key(livro_adaptado) references Livro_adaptado(isbn)

);

CREATE TABLE Editor(
	cpf char(11),
	nivel_de_experiencia char(12),
	
	constraint pk_editor primary key(cpf),
	constraint fk_editor foreign key(cpf) references Funcionarios(cpf)
		ON DELETE CASCADE ON UPDATE cascade
);

CREATE TABLE Edita(
	editor char(11),
	livro_adaptado char(10),
	
	constraint pk_edita primary key(editor, livro_adaptado),
	constraint fk_edita_editor foreign key(editor) references Editor(cpf) ON DELETE CASCADE ON UPDATE cascade,
	constraint fk_edita_livro_adaptado foreign key(livro_adaptado) references Livro_adaptado(isbn)
		


);


CREATE TABLE Ferramentas_de_trabalho(
	editor char(11),
	ferramenta varchar(20),
	
	constraint pk_ferramentas primary key(editor, ferramenta),
	constraint fk_ferramenta foreign key(editor) references Editor(cpf) ON DELETE CASCADE ON UPDATE cascade

);








