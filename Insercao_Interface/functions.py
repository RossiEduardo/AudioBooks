import cx_Oracle

# Função para inserir um livro no banco
def inserir_livro(ISBN, Título, Autor, Edição, Editora, Produtor):
    # Estabelecer a conexão com o banco de dados Oracle
    conn = cx_Oracle.connect("seu_usuario/sua_senha@nome_do_banco")

    # Criar um cursor para executar comandos SQL
    cursor = conn.cursor()

    # Comando SQL para inserir um livro na tabela
    sql = "INSERT INTO livro (ISBN, Título, Autor, Edição, Editora, Produtor) VALUES (:ISBN, :Título, :Autor, :Edição, :Editora, :Produtor)"

    # Executar o comando SQL com os valores a serem inseridos
    cursor.execute(sql, ISBN=ISBN, Título=Título, Autor=Autor, Edição=Edição, Editora=Editora, Produtor=Produtor)

    # Confirmar a transação
    conn.commit()

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

    print('Livro inserido com sucesso.')


# Função para consultar os livros no banco
def consultar_livros():
    # Estabelecer a conexão com o banco de dados Oracle
    conn = cx_Oracle.connect("seu_usuario/sua_senha@nome_do_banco")

    # Criar um cursor para executar comandos SQL
    cursor = conn.cursor()

    # Comando SQL para consultar os livros
    sql = "SELECT ISBN, Título, Autor, Edição, Editora, Produtor FROM livro"

    # Executar o comando SQL
    cursor.execute(sql)

    # Obter todos os resultados da consulta
    livros = cursor.fetchall()

    # Exibir os livros
    for livro in livros:
        print(f'ISBN: {livro[0]}, Título: {livro[1]}, Autor: {livro[2]}, Edição: {livro[3]}, Editora: {livro[4]}, Produtor: {livro[5]}')

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

