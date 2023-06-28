from functions import inserir_livro, consultar_livros

# Inserir um livro no banco
ISBN = (input('Digite o ISBN do livro: '))
Título = input('Digite o Título do livro: ')
Autor = input('Digite o autor do livro: ')
Edição = input('Digite a edição do livro: ')
Editora = input('Digite a editora do livro: ')
Produtor = input('Digite o produtor do livro: ')

inserir_livro(ISBN, Título, Autor, Edição, Editora, Produtor)

# Consultar os livros no banco
consultar_livros()
