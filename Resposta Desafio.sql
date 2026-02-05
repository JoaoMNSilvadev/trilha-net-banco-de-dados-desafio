-- 1 - Buscar o nome e ano dos filmes
select Nome as Nome, Ano as Ano from Filmes;
-- 2 - Buscar o nome, ano e duração dos filmes ordenados pelo ano de lançamento
select Nome as Nome, Ano as Ano, Duracao as Duracao from Filmes
order by Ano;
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes
where Nome = 'De Volta para o Futuro';
-- 4 - Buscar todos os filmes lançados em 1997
select * from Filmes
where Ano = 1997;
-- 5 - Buscar todos os filmes lançados após o ano 2000
select * from Filmes
where Ano > 2000;
-- 6 - Buscar todos os filmes com duração Maior 100 e menor 150 minutos, ordenados pela duração em ordem crescente
select * from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao;
-- 7 - Contar a quantidade de filmes lançados por ano, ordenando do ano com mais filmes para o ano com menos filmes
select Ano Ano, COUNT(*) Quantidade
 from Filmes
group by Ano
order by Quantidade Desc;
-- 8 - Buscar todos os atores do gênero masculino
Select * from Atores
where Genero = 'M';
-- 9 - Buscar todos os atores do gênero feminino, ordenados pelo primeiro nome
select * from Atores
where Genero = 'F'
order by PrimeiroNome;
-- 10 - Buscar o nome dos filmes junto com o gênero
select f.Nome, g.Genero 
from Filmes f
join FilmesGenero fg on f.id = fg.IdFilme
join Generos g on g.Id= fg.IdGenero;
-- 11 - Buscar o nome dos filmes do gênero 'Mistério'
select f.Nome, g.Genero 
from Filmes f
join FilmesGenero fg on f.id = fg.IdFilme
join Generos g on g.Id= fg.IdGenero
where g.Genero = 'Mistério';
-- 12 - Buscar o nome dos atores junto com o nome dos filmes e o papel que ele interpretou
select f.Nome,a.PrimeiroNome, a.UltimoNome, ef.Papel 
from Atores a
join ElencoFilme ef on a.Id = ef.IdAtor
join Filmes f on f.Id = ef.IdFilme;


