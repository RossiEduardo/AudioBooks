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

--Numero de funcionarios de cada estudio de gravação 
SELECT counter.Nome, count(*)
from(
	SELECT e.Nome, e.CPF, count(*)
		servico s inner join estudio_gravacao e 
		on e.cnpj = s.cnpj_estudio 
		join contratam c 
		on s.codigo = c.codigo
		join funcionarios f
		on c.cpf_funcionario = f.CPF
	group by e.Nome, e.CPF
	) as counter
group by counter.Nome

--crie uma busca para encontrar todos os livros escritos por Shakespare  que possuem adaptação, 
--no qual a editora tem publico alvo adolescente com genero de romance
SELECT la.ISBN, la.Título, la.Autor, la.Gênero, e.Nome
from Livro_Adaptado la 
join (
	SELECT l.ISBN, l.Editora
	from Livro l 
	where l.Autor = 'Shakespeare'
) as s on la.ISBN_Livro = s.ISBN
join(
	SELECT CNPJ, Nome
	from Editora E
  	where E.Público_Alvo = 'adolescente'
) as e on s.Editora = e.CNPJ
where la.Gênero = 'romance';

