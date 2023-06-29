from confi_db import cursor, conn


def inserir_livro(isbn, titulo, autor, edicao, editora, produtor):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Livro(ISBN, Titulo, Autor, Edicao, Editora, Produtor) VALUES (%s, %s, %s, %d, %s, %s)"
        values = (isbn, titulo, autor, edicao, editora, produtor)
        cursor.execute(query, values)
        conn.commit()
        print("Livro inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir livro:", e)


def inserir_funcionario(cpf, nome, historico, tipo):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Funcionarios (cpf, nome, hist_trabalhos, tipo) VALUES (%s, %s, %s, %s)"
        values = (cpf, nome, historico, tipo)
        cursor.execute(query, values)
        conn.commit()
        print("Funcionario inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir funcionario:", e)


def inserir_produtor(cpf, genero_especialista):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Produtor (cpf, genero_especialist) VALUES (%s, %s)"
        values = (cpf, genero_especialista)
        cursor.execute(query, values)
        conn.commit()
        print("Produtor inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir produtor:", e)


def inserir_editor(cpf, nivel_exp):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Produtor (cpf, nivel_de_experiencia) VALUES (%s, %s)"
        values = (cpf, nivel_exp)
        cursor.execute(query, values)
        conn.commit()
        print("Editor inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir editor:", e)



def inserir_dublador(cpf, narracao, idioma_nativo, idioma_fluente, idioma_intermediario):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Dublador (cpf, estilo_de_narracao, idioma_nativo, idioma_fluente, idioma_intermediario) VALUES (%s, %s, %s, %s, %s)"
        values = (cpf, narracao, idioma_nativo, idioma_fluente, idioma_intermediario)
        cursor.execute(query, values)
        conn.commit()
        print("Dublador inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir dublador:", e)



def inserir_ferramenta_trabalho(cpf_editor, ferramenta):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Ferramentas_de_trabalho(editor, ferramenta) VALUES (%s, %s)"
        values = (cpf_editor, ferramenta)
        cursor.execute(query, values)
        conn.commit()
        print("Ferramenta inserida com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir ferramenta:", e)

def consultar_produtores_livros():
    try:
        query = """SELECT funcionarios.nome, count(*) FROM Livro INNER JOIN funcionarios ON livro.produtor = funcionarios.cpf GROUP BY funcionarios.nome HAVING count(*) > 1 """
        cursor.execute(query)
        results = cursor.fetchall()
        for row in results:
            nome_funcionario = row[0]
            quantidade_livros = row[1]
            print(f"Funcionário: {nome_funcionario} | Quantidade de Livros: {quantidade_livros}")

    except Exception as e:
        print("Erro ao consultar os produtores com mais de um livro produzido ")