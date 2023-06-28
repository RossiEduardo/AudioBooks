-- Duvidas sobre alguns topicos da criacao de tabela: (experiencia ser inteiro) (historico, com0o armazenar) (tamanho n seria char?) (duracao em minutos) (como identificar plataforma)

-- Inserção na tabela Plataforma_Distribuidora
INSERT INTO Plataforma_Distribuidora (cnpj, nome, num_usuarios, num_livros)
VALUES ('12345678901234', 'Distribuidora X', 1000, 500);

INSERT INTO Plataforma_Distribuidora (cnpj, nome, num_usuarios, num_livros)
VALUES ('98765432109876', 'Distribuidora Y', 1500, 800);

-- Inserção na tabela Editora
INSERT INTO Editora (CNPJ, Nome, Livros_Publicados, Público_Alvo, CEP, Rua, Número)
VALUES ('12345678901234', 'Editora X', 100, 'Adulto', '12345678', 'Rua A', 10);

INSERT INTO Editora (CNPJ, Nome, Livros_Publicados, Público_Alvo, CEP, Rua, Número)
VALUES ('98765432109876', 'Editora Y', 50, 'Infantil', '87654321', 'Rua B', 20);

-- Inserção na tabela Produtor
INSERT INTO Produtor (CPF, Gênero_especialista)
VALUES ('11111111111', 'Ficção');

INSERT INTO Produtor (CPF, Gênero_especialista)
VALUES ('22222222222', 'Suspense');

-- Inserção na tabela Livro
INSERT INTO Livro (ISBN, Título, Autor, Edição, Editora, Produtor)
VALUES ('9781234567', 'Livro A', 'Autor A', 1, '12345678901234', NULL);

INSERT INTO Livro (ISBN, Título, Autor, Edição, Editora, Produtor)
VALUES ('9780987654', 'Livro B', 'Autor B', 2, '98765432109876', NULL);

-- Inserção na tabela Livro_Adaptado
INSERT INTO Livro_Adaptado (ISBN, ISBN_Livro, Título, Idioma, Autor, Tamanho_Arquivo, Gênero, Duração, Classificação, Descrição)
VALUES ('9781234567890', '9781234567', 'Livro A', 'Português', 'Autor A', '10MB', 'Ficção', 120 , 'Livre', 'Descrição A');

INSERT INTO Livro_Adaptado (ISBN, ISBN_Livro, Título, Idioma, Autor, Tamanho_Arquivo, Gênero, Duração, Classificação, Descrição)
VALUES ('9780987654321', '9780987654', 'Livro B', 'Inglês', 'Autor B', '5MB', 'Suspense', 60, 'Livre', 'Descrição B');

-- Inserção na tabela Audiobook
INSERT INTO Audiobook (ISBN, Titulo, Idioma, Autor, Duracao, Formato, Classificacao, Genero, Descricao, Livro_Adaptado)
VALUES ('9754123456789', 'Livro A', 'Inglês', 'Autor A', 120 , 'MP3', 'Livre', 'Ficção', 'Descrição A', '9780987654321');

INSERT INTO Audiobook (ISBN, Titulo, Idioma, Autor, Duracao, Formato, Classificacao, Genero, Descricao, Livro_Adaptado)
VALUES ('97811654321', 'Livro B', 'Português', 'Autor B', 120 , 'MP3', 'Livre', 'Suspense', 'Descrição B', '9780987654321');

-- Inserção na tabela Player
INSERT INTO Player (CNPJ, ISBN)
VALUES ('12345678901234', '9781234567890');

INSERT INTO Player (CNPJ, ISBN)
VALUES ('98765432109876', '9780987654321');

-- Inserção na tabela Leitor
INSERT INTO Leitor (CPF, Nome, Login, Senha, Histórico, Idioma_Buscado)
VALUES ('11111111111', 'Pedro', 'pedro123', 'senha456', 'Histórico A', 'Inglês');

INSERT INTO Leitor (CPF, Nome, Login, Senha, Histórico, Idioma_Buscado)
VALUES ('22222222222', 'Ana', 'ana456', 'abcde789', 'Histórico B', 'Espanhol');

-- Inserção na tabela LivrosFavoritos
INSERT INTO Livros_Favoritos (CPF, Favoritos)
VALUES ('11111111111', 'Livro X');

INSERT INTO Livros_Favoritos (CPF, Favoritos)
VALUES ('22222222222', 'Livro Y');

-- Inserção na tabela Moderador
INSERT INTO Moderador (CPF, Senha, Plataforma)
VALUES ('1234567890', 'senha123', 'Plataforma A');

INSERT INTO Moderador (CPF, Senha, Plataforma)
VALUES ('0987654321', 'abcde123', 'Plataforma B');

-- Inserção na tabela Acessa
INSERT INTO Acessa (Player_CNPJ, Player_ISBN, Leitor, NumLivrosOuvidos)
VALUES ('123456789', '9781234567890', 'João', 5);

INSERT INTO Acessa (Player_CNPJ, Player_ISBN, Leitor, NumLivrosOuvidos)
VALUES ('987654321', '9780987654321', 'Maria', 3);

-- Inserção na tabela Estudio_de_gravação
INSERT INTO Estudio_de_gravacao (CNPJ, Nome, Rua, CEP, Número)
VALUES ('12345678901234', 'Estúdio X', 'Rua A', '12345', 10);

INSERT INTO Estudio_de_gravacao (CNPJ, Nome, Rua, CEP, Número)
VALUES ('98765432109876', 'Estúdio Y', 'Rua B', '54321', 20);

-- Inserção na tabela Serviço
INSERT INTO Serviço (Código, CNPJ_Estúdio, ISBN)
VALUES (1, '12345678901234', '9781234567890');

INSERT INTO Serviço (Código, CNPJ_Estúdio, ISBN)
VALUES (2, '98765432109876', '9780987654321');

-- Inserção na tabela Sala
INSERT INTO Sala (CNPJEmpresa, Número, Capacidade)
VALUES ('12345678901234', 1, 50);

INSERT INTO Sala (CNPJEmpresa, Número, Capacidade)
VALUES ('98765432109876', 2, 30);

-- Inserção na tabela Funcionários
INSERT INTO Funcionários (CPF, Nome, Histórico_de_trabalhos, tipo)
VALUES ('11111111111', 'Funcionário A', 'Histórico X', 'dublador');

INSERT INTO Funcionários (CPF, Nome, Histórico_de_trabalhos, tipo)
VALUES ('22222222222', 'Funcionário B', 'Histórico Y', 'editor');

-- Inserção na tabela Contratam
INSERT INTO Contratam (Código, CPFfuncionario)
VALUES (1, '11111111111');

INSERT INTO Contratam (Código, CPFfuncionario)
VALUES (2, '22222222222');

-- Inserção na tabela Dublador
INSERT INTO Dublador (CPF, Estilo_de_narração, Idioma_Nativo, Idioma_Fluente, Idioma_Intermediário)
VALUES ('11111111111', 'Estilo X', 'Português', 'Inglês', 'Espanhol');

INSERT INTO Dublador (CPF, Estilo_de_narração, Idioma_Nativo, Idioma_Fluente, Idioma_Intermediário)
VALUES ('22222222222', 'Estilo Y', 'Inglês', 'Espanhol', 'Português');

-- Inserção na tabela Dubla
INSERT INTO Dubla (Dublador, Livro_Adaptado)
VALUES ('11111111111', NULL);

INSERT INTO Dubla (Dublador, Livro_Adaptado)
VALUES ('22222222222', NULL);

-- Inserção na tabela Editor
INSERT INTO Editor (CPF, Nível_de_Experiência)
VALUES ('11111111111', 'Experiente');

INSERT INTO Editor (CPF, Nível_de_Experiência)
VALUES ('22222222222', 'Iniciante');

-- Inserção na tabela Edita
INSERT INTO Edita (Editor, Livro_Adaptado)
VALUES ('11111111111', NULL);

INSERT INTO Edita (Editor, Livro_Adaptado)
VALUES ('22222222222', NULL);

-- Inserção na tabela Ferramentas_de_trabalho
INSERT INTO Ferramentas_de_trabalho (Editor, Ferramenta)
VALUES ('11111111111', 'Ferramenta X');

INSERT INTO Ferramentas_de_trabalho (Editor, Ferramenta)
VALUES ('22222222222', 'Ferramenta Y');

