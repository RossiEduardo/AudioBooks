--Verificar número de audiobooks disponíveis para cada genero e qual genero foi mais acessado em ordem decrescente
SELECT genero, count(*) as Quantidade
from Audiobook a inner join acessa s on s.player_isbn = a.isbn
group by genero
order by Quantidade DESC

--Consultar os produtores que produziram mais de um livro
SELECT funcionarios.nome, count(*)
from Livro inner join funcionarios on livro.produtor = funcionarios.cpf
group by funcionarios.nome 
	having count(*) > 1

