from confi_db import cursor, conn


def inserir_livro(isbn, titulo, autor, edicao, editora, produtor):
    try:
        # Inserir livro na tabela do banco de dados
        query = "INSERT INTO Livro(ISBN, Titulo, Autor, Edicao, Editora, Produtor) VALUES (%s, %s, %s, %s, %s, %s)"
        values = (isbn, titulo, autor, edicao, editora, produtor)
        cursor.execute(query, values)
        conn.commit()
        print("Livro inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir livro:", e)


def inserir_funcionario(cpf, nome, salario, tipo):
    try:
        # Inserir funcionario na tabela do banco de dados
        query = "INSERT INTO Funcionarios (cpf, nome, salario, tipo) VALUES (%s, %s, %s, %s)"
        values = (cpf, nome, salario, tipo)
        cursor.execute(query, values)
        conn.commit()
        print("Funcionario inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir funcionario:", e)


def inserir_produtor(cpf, genero_especialista):
    try:
        # Inserir produtor na tabela do banco de dados
        query = "INSERT INTO Produtor (cpf, genero_especialist) VALUES (%s, %s)"
        values = (cpf, genero_especialista)
        cursor.execute(query, values)
        conn.commit()
        print("Produtor inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir produtor:", e)


def inserir_editor(cpf, nivel_exp):
    try:
        # Inserir editor na tabela do banco de dados
        query = "INSERT INTO Produtor (cpf, nivel_de_experiencia) VALUES (%s, %s)"
        values = (cpf, nivel_exp)
        cursor.execute(query, values)
        conn.commit()
        print("Editor inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir editor:", e)



def inserir_dublador(cpf, narracao, idioma_nativo, idioma_fluente, idioma_intermediario):
    try:
        # Inserir dublador na tabela do banco de dados
        query = "INSERT INTO Dublador (cpf, estilo_de_narracao, idioma_nativo, idioma_fluente, idioma_intermediario) VALUES (%s, %s, %s, %s, %s)"
        values = (cpf, narracao, idioma_nativo, idioma_fluente, idioma_intermediario)
        cursor.execute(query, values)
        conn.commit()
        print("Dublador inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir dublador:", e)



def inserir_ferramenta_trabalho(cpf_editor, ferramenta):
    try:
        # Inserir ferramenta de trabalho na tabela do banco de dados
        query = "INSERT INTO Ferramentas_de_trabalho(editor, ferramenta) VALUES (%s, %s)"
        values = (cpf_editor, ferramenta)
        cursor.execute(query, values)
        conn.commit()
        print("Ferramenta inserida com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir ferramenta:", e)

def consultar_funcionarios():
    try:
        cursor.execute("SELECT * FROM Funcionarios")
        results = cursor.fetchall()
        # Imprimir os valores
        for row in results:
            print(row)
    except Exception as e:
        print("Erro ao consultar os produtores com mais de um livro produzido ")