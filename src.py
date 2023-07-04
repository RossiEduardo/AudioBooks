from confi_db import cursor, conn
import functions


# Inserir um livro no banco
def inserir_livros_no_banco():
    ISBN = (input('Digite o ISBN do livro: '))
    Titulo = input('Digite o Título do livro: ')
    Autor = input('Digite o autor do livro: ')
    Edicao = int(input('Digite a edição do livro: '))
    Editora = input('Digite a editora do livro: ')
    Produtor = input('Digite o produtor do livro: ')

    functions.inserir_livro(ISBN, Titulo, Autor, Edicao, Editora, Produtor)


def inserir_funcionario_no_banco():
    cpf = (input('Digite o cpf do funcionario: '))
    nome = (input('Digite o nome do funcionario: '))
    salario = int(input('Digite o salario do funcionario: '))
    tipo = (input('Digite o tipo do funcionario: '))
    
    functions.inserir_funcionario(cpf, nome, salario, tipo)

def inserir_produtor_no_banco():
    cpf = (input('Digite o cpf do produtor: '))
    genero = input("Digite o genero do produtor: ")
    
    functions.inserir_produtor(cpf, genero)


def inserir_editor_no_banco():
    cpf = (input('Digite o cpf do editor: '))
    nivel_exp = input("Digite o nível de experiencia do editor: ")
    
    functions.inserir_editor(cpf, nivel_exp)


def inserir_dublador_no_banco():
    cpf = (input('Digite o cpf do dublador: '))
    narracao = input("Digite o estilo de narracao do dublador: ")
    idioma_nativo = input("Digite o idioma nativo do dublador: ")
    idioma_fluente = input("Digite o idioma fluente do dublador: ")
    idioma_intermediario = input("Digite o idioma intermediario do dublador: ")

    
    functions.inserir_dublador(cpf, narracao, idioma_nativo, idioma_fluente, idioma_intermediario)

def inserir_ferramenta_no_banco():
    cpf_editor = (input('Digite o cpf do dublador: '))
    ferramenta = (input('Digite o a ferramenta do editor: '))

    functions.inserir_ferramenta_trabalho(cpf_editor, ferramenta)



print("Seja bem vindo ao nosso sistema\nDigite o código do comando:\n")
print("1- Inserir livro no banco")
print("2- Inserir funcionario no banco")
print("3- Inserir produtor no banco")
print("4- Inserir editor no banco")
print("5- Inserir dublador no banco")
print("6- Inserir ferramentas de trabalho do editor")
print("7- Consultar funcionarios")

print("0- Sair")



operacao = int(input())
while(operacao != 0):
    if operacao == 1:
        inserir_livros_no_banco()
    elif operacao == 2:
        inserir_funcionario_no_banco()
    elif operacao == 3: 
        inserir_produtor_no_banco()
    elif operacao == 4:
        inserir_editor_no_banco()
    elif operacao == 5:
        inserir_dublador_no_banco()
    elif operacao == 6:
        inserir_ferramenta_no_banco()
    elif operacao == 7:
        print("oi")
        functions.consultar_funcionarios()

    operacao = int(input("\nDigite o código do comando: "))
    

# Fechar cursor e conexão
cursor.close()
conn.close()