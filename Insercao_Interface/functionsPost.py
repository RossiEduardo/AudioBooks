from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

# Configuração da conexão com o banco de dados
engine = create_engine('postgresql://user:senha@localhost/nome_do_banco')

# Criação da classe base para as tabelas
Base = declarative_base()


# Definição da tabela
class Livro(Base):
    __tablename__ = 'livro'

    ISBN = Column(String, primary_key=True)
    Título = Column(String)
    Autor = Column(String)
    Edição = Column(String)
    Editora = Column(String)
    Produtor = Column(String)


# Criação das tabelas no banco de dados
Base.metadata.create_all(engine)

# Criação de uma função para inserir um livro no banco
def inserir_livro(ISBN, Título, Autor, Edição, Editora, Produtor):
    Session = sessionmaker(bind=engine)
    session = Session()

    livro = Livro(ISBN=ISBN, Título=Título, Autor=Autor, Edição=Edição, Editora=Editora, Produtor=Produtor)
    session.add(livro)
    session.commit()
    session.close()

    print('Livro inserido com sucesso.')


# Criação de uma função para consultar os livros no banco
def consultar_livros():
    Session = sessionmaker(bind=engine)
    session = Session()

    livros = session.query(Livro).all()

    for livro in livros:
        print(f'ISBN: {livro.ISBN}, Título: {livro.Título}, Autor: {livro.Autor}, Edição: {livro.Edição}, Editora: {livro.Editora}, Produtor: {livro.Produtor}')

    session.close()
