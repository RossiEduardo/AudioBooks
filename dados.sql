 -- Inserção na tabela Plataforma_Distribuidora

INSERT INTO Plataforma_Distribuidora (cnpj, nome, num_usuarios, num_livros)
VALUES ('12345678901234',
        'PlataformaA',
        1000,
        500);


INSERT INTO Plataforma_Distribuidora (cnpj, nome, num_usuarios, num_livros)
VALUES ('98765432101276',
        'PlataformaB',
        1500,
        800);

-- Inserção na tabela Editora

INSERT INTO Editora (CNPJ, Nome, Livros_Publicados, Publico_Alvo, CEP, Rua, Numero)
VALUES ('12345678908734',
        'Editora X',
        100,
        'Adulto',
        '12345678',
        'Rua A',
        10);


INSERT INTO Editora (CNPJ, Nome, Livros_Publicados, Publico_Alvo, CEP, Rua, Numero)
VALUES ('98765432109876',
        'Editora Y',
        50,
        'Infantil',
        '87654321',
        'Rua B',
        20);

-- Inserção na tabela Funcionários

INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('11111111111',
        'Funcionário A',
        'Histórico X',
        'produtor');


INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('22222222222',
        'Funcionário B',
        'Histórico Y',
        'produtor');


INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('33333333333',
        'Funcionário C',
        'Histórico Y',
        'editor');


INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('44444444444',
        'Funcionário D',
        'Histórico Y',
        'editor');


INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('55555555555',
        'Funcionário E',
        'Histórico Y',
        'dublador');


INSERT INTO Funcionarios (CPF, Nome, Hist_trabalhos, tipo)
VALUES ('66666666666',
        'Funcionário F',
        'Histórico Y',
        'dublador');

-- Inserção na tabela Produtor

INSERT INTO Produtor (CPF, Genero_especialist)
VALUES ('11111111111',
        'Ficção');


INSERT INTO Produtor (CPF, Genero_especialist)
VALUES ('22222222222',
        'Suspense');

-- Inserção na tabela Livro

INSERT INTO Livro (ISBN, Titulo, Autor, Edicao, Editora, Produtor)
VALUES ('9781234567',
        'Livro A',
        'Autor A',
        1,
        '12345678908734',
        '11111111111');


INSERT INTO Livro (ISBN, Titulo, Autor, Edicao, Editora, Produtor)
VALUES ('9780987654',
        'Livro B',
        'Autor B',
        2,
        '98765432109876',
        '11111111111');

-- Inserção na tabela Livro_Adaptado

INSERT INTO Livro_Adaptado (ISBN, ISBN_Livro, Titulo, Idioma, Autor, Tamanho_Arquivo, Genero, Duracao, Classificacao, Descricao)
VALUES ('3781234567',
        '9781234567',
        'Livro A',
        'Português',
        'Autor A',
        '10',
        'Ficção',
        120,
        10,
        'Descrição A');


INSERT INTO Livro_Adaptado (ISBN, ISBN_Livro, Titulo, Idioma, Autor, Tamanho_Arquivo, Genero, Duracao, Classificacao, Descricao)
VALUES ('4780987654',
        '9780987654',
        'Livro B',
        'Inglês',
        'Autor B',
        '5',
        'Suspense',
        60,
        12,
        'Descrição B');

-- Inserção na tabela Audiobook

INSERT INTO Audiobook (ISBN, Titulo, Idioma, Autor, Duracao, Formato, Classificacao, Genero, Descricao, Livro_Adaptado)
VALUES ('9780287654',
        'Livro A',
        'Inglês',
        'Autor A',
        120,
        'MP3',
        14,
        'Ficção',
        'Descrição A',
        '9780987654');


INSERT INTO Audiobook (ISBN, Titulo, Idioma, Autor, Duracao, Formato, Classificacao, Genero, Descricao, Livro_Adaptado)
VALUES ('9781434567',
        'Livro B',
        'Português',
        'Autor B',
        120,
        'MP3',
        18,
        'Suspense',
        'Descrição B',
        '9781234567');

-- Inserção na tabela Player

INSERT INTO Player (CNPJ, ISBN)
VALUES ('12345678901234',
        '9782234567');


INSERT INTO Player (CNPJ, ISBN)
VALUES ('98765432109876',
        '9780887654');

-- Inserção na tabela

INSERT INTO Leitor (CPF, Nome, Login, Senha, Historico, Idioma_Buscado)
VALUES ('99999999999',
        'João',
        'joao123',
        'senha456',
        'Histórico A',
        'Inglês');


INSERT INTO Leitor (CPF, Nome, Login, Senha, Historico, Idioma_Buscado)
VALUES ('88888888888',
        'Maria',
        'maria456',
        'abcde789',
        'Histórico B',
        'Espanhol');

-- Inserção na tabela LivrosFavoritos

INSERT INTO Livros_Favoritos (CPF, Favoritos)
VALUES ('99999999999',
        'Livro X');


INSERT INTO Livros_Favoritos (CPF, Favoritos)
VALUES ('88888888888',
        'Livro Y');

-- Inserção na tabela Moderador

INSERT INTO Moderador (CPF, Senha, Plataforma)
VALUES ('12345678901',
        'senha123',
        '12345678901234');


INSERT INTO Moderador (CPF, Senha, Plataforma)
VALUES ('09876543211',
        'abcde123',
        '98765432109876');

-- Inserção na tabela Acessa

INSERT INTO Acessa (Player_CNPJ, Player_ISBN, Leitor, n_livros_ouvidos)
VALUES ('12345678901234',
        '9782234567',
        '999999999',
        5);


INSERT INTO Acessa (Player_CNPJ, Player_ISBN, Leitor, n_livros_ouvidos)
VALUES ('98765432109876',
        '9780887654',
        '888888888',
        3);

-- Inserção na tabela Estudio_de_gravação

INSERT INTO Estudio_de_gravacao (CNPJ, Nome, Rua, CEP, Numero)
VALUES ('12345688901234',
        'Estúdio X',
        'Rua A',
        '12365456',
        10);


INSERT INTO Estudio_de_gravacao (CNPJ, Nome, Rua, CEP, Numero)
VALUES ('98775432109876',
        'Estúdio Y',
        'Rua B',
        '54321756',
        20);

-- Inserção na tabela Serviço

INSERT INTO Servico (Codigo, CNPJ_Estudio, ISBN)
VALUES (1,
        '12345688901234',
        '9781234567');


INSERT INTO Servico (Codigo, CNPJ_Estudio, ISBN)
VALUES (2,
        '98775432109876',
        '9780987654');

-- Inserção na tabela Sala

INSERT INTO Sala (CNPJ_Empresa, Numero, Capacidade)
VALUES ('1234568901234',
        1,
        50);


INSERT INTO Sala (CNPJ_Empresa, Numero, Capacidade)
VALUES ('98765432109876',
        2,
        30);

-- Inserção na tabela Contratam

INSERT INTO Contratam (Codigo, CPF_funcionario)
VALUES (1,
        '11111111111');


INSERT INTO Contratam (Codigo, CPF_funcionario)
VALUES (2,
        '22222222222');

-- Inserção na tabela Dublador

INSERT INTO Dublador (CPF, Estilo_de_narracao, Idioma_Nativo, Idioma_Fluente, Idioma_Intermediario)
VALUES ('55555555555',
        'Estilo X',
        'Português',
        'Inglês',
        'Espanhol');


INSERT INTO Dublador (CPF, Estilo_de_narracao, Idioma_Nativo, Idioma_Fluente, Idioma_Intermediario)
VALUES ('66666666666',
        'Estilo Y',
        'Inglês',
        'Espanhol',
        'Português');

-- Inserção na tabela Dubla

INSERT INTO Dubla (Dublador, Livro_Adaptado)
VALUES ('55555555555',
        '9781234567');


INSERT INTO Dubla (Dublador, Livro_Adaptado)
VALUES ('66666666666',
        '9780987654');

-- Inserção na tabela Editor

INSERT INTO Editor (CPF, Nivel_de_Experiencia)
VALUES ('33333333333',
        'Experiente');


INSERT INTO Editor (CPF, Nivel_de_Experiencia)
VALUES ('44444444444',
        'Iniciante');

-- Inserção na tabela Edita

INSERT INTO Edita (Editor, Livro_Adaptado)
VALUES ('33333333333',
        '9781234567');


INSERT INTO Edita (Editor, Livro_Adaptado)
VALUES ('44444444444',
        '9780987654');

-- Inserção na tabela Ferramentas_de_trabalho

INSERT INTO Ferramentas_de_trabalho (Editor, Ferramenta)
VALUES ('33333333333',
        'Ferramenta X');


INSERT INTO Ferramentas_de_trabalho (Editor, Ferramenta)
VALUES ('44444444444',
        'Ferramenta Y');

--Novas inserções
-- Inserção na tabela Livro

INSERT INTO Livro (ISBN, Titulo, Autor, Edicao, Editora, Produtor)
VALUES ('9781233567',
        'Livro A',
        'Autor A',
        1,
        '12345678901234',
        NULL);

-- Inserção na tabela Livro_Adaptado

INSERT INTO Livro_Adaptado (ISBN, ISBN_Livro, Titulo, Idioma, Autor, Tamanho_Arquivo, Genero, Duracao, Classificacao, Descricao)
VALUES ('9781214567',
        '9781233567',
        'Livro A',
        'Português',
        'Autor A',
        '10',
        'Ficção',
        120,
        10,
        'Descrição A');


INSERT INTO Audiobook (ISBN, Titulo, Idioma, Autor, Duracao, Formato, Classificacao, Genero, Descricao, Livro_Adaptado)
VALUES ('9780887554',
        'Livro A',
        'Inglês',
        'Autor A',
        120,
        'MP3',
        14,
        'Ficção',
        'Descrição A',
        '9781214567');


INSERT INTO Player (CNPJ, ISBN)
VALUES ('12345678901234',
        '9780887554');


INSERT INTO Acessa (Player_CNPJ, Player_ISBN, Leitor, n_livros_ouvidos)
VALUES ('12345678901234',
        '9780887554',
        '11111111111',
        6);